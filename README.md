# GSoC-24

<p align="center">
  <img src="files/images/GSoC_logo.svg" alt="GSoC Logo">
  <img src="files/images/6004541.png" alt="Image">


<div align="center">
    <h2>
        <a href="https://summerofcode.withgoogle.com/programs/2024/projects/6RIfpdn6">
            License Identification with Large Language Models (LLMs)
        </a> @ 
        <a href="https://www.fossology.org/">
            FOSSology
        </a>
    </h2>
</div>

<h1 align="center" id="project-details">Project Details</h1>

The objective of this project is to evaluate and test the capabilities of large language models (LLMs) for software license identification and matching. The primary focus is to assess whether LLMs can effectively identify license-related text within software files and accurately determine the corresponding license. This exploration aims to understand how well LLMs perform in comparison to traditional rule-based methods, which rely on techniques like regular expressions and preset rules for license detection.

Unlike traditional approaches, LLMs offer a dynamic method for identification, as they don’t depend on predefined patterns. This enables them to potentially recognize new or previously unseen licenses that may not be captured by conventional techniques. For example, LLMs could identify licenses through both simple identifiers (e.g., ‘SPDX-License-Identifier: CC-BY-SA-4.0’) and more complex license texts, including variations of well-known licenses or entirely new ones.

**License Identification vs. License Matching:**

* **License Identification** involves pinpointing text snippets within code files that explicitly or implicitly indicate the presence of a software license. This can include simple identifiers (e.g., ‘SPDX-License-Identifier: CC-BY-SA-4.0’) as well as more complex license texts embedded within comments or documentation.
* **License Matching** goes a step further by taking the identified text and accurately matching it to the correct license type, drawing from a database of known licenses and their variations.

**Key Areas of Focus:**

1. **Evaluating LLM Performance on License Identification:**
   * Testing various LLMs, including models such as Gemma 2 9B, Llama 3 8B, and Mistral 7B, to determine their ability to detect and identify licenses embedded in software files.

2. **Semantic Search for License Matching:**
    * Implementing a semantic search algorithm to enhance the precision of identifying and matching license text to known licenses.

3. **Handling License Obligations and Compatibility:**
    * Exploring whether LLMs can accurately understand and apply license obligations, converting license texts into standard obligation formats.
    
    * Investigating if LLMs can effectively match obligations with corresponding clauses in the license text, verifying that the obligations align with the license terms.
  
    * Experimenting with LLMs' ability to assess compatibility between licenses, and identify specific clauses that support particular obligations.


<h1 align="center" id="contributions">Contributions</h1>

## 1. LLM Comparison Codebase: Framework for License Identification with LLMs

### Project Structure Overview:

The codebase is organized into distinct modules that facilitate different tasks related to software license identification using large language models (LLMs). The key directories are:

* `helpers`: Contains essential utility functions, LLM clients, and model configurations.
* `extras`: Holds additional data, including the license dataset and potentially other resources like embeddings and test files.
* A notebook is included for running evaluations and testing various LLMs.

### Core Functionality:
The core of the codebase lies in the `LLMClient` class, which offers a streamlined interface for interacting with multiple LLMs from different providers. This class abstracts away the complexities of handling various LLM APIs, allowing for seamless integration and experimentation with different models. The `LLMClient` class provides the following key features:

1. **Unified Interface:** The `LLMClient` class presents a consistent interface for interacting with LLMs from different providers, such as Groq, NVIDIA, and Together AI. This eliminates the need to write provider-specific code, making it easier to switch between models and providers.

2. **Multiple LLM Support:** The LLMClient is compatible with a wide range of LLMs, including but not limited to:

    * Llama 3/3.1 8B
    * Gemma 2 9B
    * Mistral 7B
    * Phi 3 mini/small/medium

3. **Rate Limiting and Retries:** The `LLMClient` class incorporates rate limiting and retry mechanisms to ensure reliable inference. It automatically handles rate limits imposed by different providers, preventing API request failures due to exceeding rate limits. Additionally, it implements retry logic to handle transient errors, improving the robustness of the inference process.

4. **Context Window Management:** The `LLMClient` class manages context window limitations for different LLM models. By using the tiktoken library, the client calculates the number of tokens in a prompt and prevents prompts that exceed 95% of the model’s context window. This prevents errors related to oversized input, ensuring smooth operation even with lengthy inputs.

5. **Error Logging and File Saving:** The `LLMClient` class includes error logging and file-saving capabilities. It logs errors encountered during inference to a designated log file, facilitating debugging and troubleshooting. It also provides functions to save the processed data and logs to CSV files, enabling further analysis and reporting.

6. **Support for License Identification and Related Tasks:** The codebase includes several support functions specifically designed for license identification and related tasks:
    * The `extract_comments` function utilizes the `nirjas` package to extract comments from code files.
    * The `scan` function utilizes semantic search with levenshtein distance to either augment the LLM in the license matching stage, or act as a standalone license scanner.
    * The `process_dataset_for_license_text_identification` and the `process_dataset_for_obligation_clause_verification` are variants of the standard `process_dataset` function which are designed specifically for the aforementioned tasks.
    * The codebase includes multiple prompts (in the `prompts.py` file) designed and tested by me for several license identification and adjancent tasks

7. **Flexibility and Extensibility:** The `LLMClient` class is designed to be flexible and extensible. It can be easily adapted to work with new LLM models and providers by adding corresponding client implementations and configurations. The codebase also provides hooks for integrating additional features and functionalities, such as custom prompt generation and output processing.

A showcase of the codebase in action can be found in the following [notebook](https://github.com/Hero2323/GSoC-24/blob/main/project-showcase.ipynb)

## 2. Exploration of LLM Capabilities in License Identification and Related Tasks
This section delves into the various ways Large Language Models (LLMs) were employed to tackle tasks related to license identification and management. I explored the feasibility of direct license matching, extraction of license text, conversion to structured obligations, verification of obligation clauses, and assessment of license compatibility. Each subsection presents findings, examples, and discusses the strengths and limitations of LLM application in these specific contexts.

### One-Stage License Matching
This project investigated the potential of LLMs to directly identify the license from a given text snippet. While LLMs showed some ability to identify the general license category (e.g., 'Apache'), they struggled with distinguishing between specific license variants. This limitation was particularly pronounced when licenses shared similar text but had subtle yet crucial differences, leading to misclassifications, especially with less common licenses.

Example Response:
<div align="center">

| scan results_x | llama_response | mistral_response | gemma_response |
|---|---|---|---|
| 0BSD BSD | **Licenses = [Zero Clause BSD (0BSD)]**\n**SPD... | **Licenses = [Zero Clause BSD (0BSD)]**\n**SPD... | **Licenses = [ 'Zero Clause BSD (0BSD)' ]**\n*\... |
| Apache-2.0 | **Licenses = [Apache License, Version 2.0]**\n... | **Licenses = [Apache License, Version 2.0]**\n... | **Licenses = [Apache License, Version 2.0]**\n... |
| Apache-2.0 | **Licenses = [Apache-2.0]**\n**SPDX-IDs = [Apa... | **Licenses = [Apache-2.0]**\n**SPDX-IDs = [Apa... | **Licenses = [Apache-2.0]**\n**SPDX-IDs = [Apa... |
| Apache-2.0 BSD-3-Clause BSL-1.0 | **Licenses = [BSD License, Apache License, Boo... | **Licenses = [BSD License, Apache License, Boo... | **Licenses:**\n\n- Licenses = [Early BSD Licen... |
| Apache-possibility | **Licenses = [Apache License]**\n**SPDX-IDs = ... | **Licenses = [Apache License]**\n**SPDX-IDs = ... | **Licenses = [Apache License]**\n**SPDX-IDs = ... |
| BSD | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n\n**SPDX-IDs = [... |
| BSD | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n\n**SPDX-IDs = [... |
| BSD | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... |
| BSD | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\n**Expl... |
| BSD | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n\n**SPDX-IDs = [... |
| BSD-3-Clause | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [MIT License]**\n\n**SPDX-IDs = [... |
| BSD-3-Clause | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = []**\n**SPDX-IDs = []**\n\n**Conc... |
| BSD-3-Clause | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [MIT License]**\n**SPDX-IDs = [SP... |
| BSD-possibility | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses:**\n\n- **Licenses:** [MIT License]... |
| BSD-style | **Licenses = [BSD License]**\n**SPDX-IDs = [SP... | **Licenses = [BSD License]**\n**SPDX-IDs = [SP... | **Licenses = [BSD License]**\n\n**SPDX-IDs = [... |
| BSD-style | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD-style license]**\n**SPDX-IDs... |
| BSD-style | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD License]**\n**SPDX-IDs = [BS... | **Licenses = [BSD-style license]**\n\n**SPDX-I... |
| BSD-style | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD-style license]**\n**SPDX-IDs... |
| BSD-style | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD-style license]**\n**SPDX-IDs... | **Licenses = [BSD License]**\n**SPDX-IDs = [SP... |
| MIT | **Licenses = [MIT License]**\n**SPDX-IDs = [SP... | **Licenses = [MIT License]**\n**SPDX-IDs = [SP... | **Licenses:**\n\n```\n- MIT License\n- SPDX-Li... |
| MIT | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses = [MIT License]**\n**SPDX-IDs = [SP... |
| MIT | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses = [MIT License]**\n**SPDX-IDs = [MI... | **Licenses:**\n\n- MIT License\n\n**SPDX-IDs:*... |
| MIT | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\n**Note... |
| NCSA | **Licenses = [University of Illinois Open Sour... | **Licenses = [University of Illinois Open Sour... | **Licenses = [University of Illinois Open Sour... |
| No_license_found | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\n**Expl... |
| No_license_found | **Licenses = ["MIT License"]**\n**SPDX-IDs = [... | **Licenses = ["MIT License"]**\n**SPDX-IDs = [... | **Licenses = []**\n**SPDX-IDs = []**\n\n**No s... |
| No_license_found | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... |
| No_license_found | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\nNo sof... | **Licenses = []**\n**SPDX-IDs = []**\n\n**No s... |
| No_license_found | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = [Apache License 2.0]**\n**SPDX-ID... | **Licenses = []**\n**SPDX-IDs = []**\n\n**No s... |

</div>


It's clear that all three LLMs (Llama 3 8b, Mistral 7b, and Gemma 1 7b) did correctly match many of the licenses, but in many cases, they also failed. Primarily, they all failed in nearly the same cases, which indicates that all of them are generally close in competency, with perhaps the Gemma 1 7b model being slightly weaker. Perhaps with RAG or fine-tuning the LLMs could be used for this task, however LLMs are generally more suitable for comprehension tasks (i.e. just identifying the text, and leaving the matching for a more deterministic, explainable approach).

### License Text Identification
The project explored the use of LLMs for extracting continuous sections of license text from code files. This task proved successful in most cases, but the LLM encountered difficulties when license text was interspersed with other content, such as HTML tags or commentary. The LLM's performance was influenced by the structure and presentation of the license information within the files.


Example Comments:
```
Distribution and modification of the the URW Garamond fonts are subject to the
Aladdin Free Public License <http://www.artifex.com/downloads/doc/Public.htm>

Copyright (c) 2000 URW++ Design & Development

The font GaramondNo8 Italic has been modified, as compared with the version
from the original distribution site <http://www.artifex.com/downloads/>;
credits to Ralf Stubner for fixing the broken quotedblleft character.

The TeX font metrics, virtual fonts and font definition files for URW Garamond,
i.e., the files in the archive ugm.zip, may be distributed and/or modified
under the conditions of the LaTeX Project Public License, either version 1.3 of
this license or (at your option) any later version.  The latest version of this
license is in http://www.latex-project.org/lppl.txt and version 1.3 or later is
part of all distributions of LaTeX version 2003/12/01 or later.

Copyright (c) 2005 Walter Schmidt


Various aspects of the font were subsequently improved and (contagiously)
released under the Aladdin Free Public License.

Copyright (c) 2009 Gael Varoquaux
Copyright (c) 2010 Rogerio Theodoro de Brito
Copyright (c) 2010 Khaled Hosny


Finally, these fonts were converted by Gaetan Bisson to TrueType format using
FontForge, for use in an X environment. No additional restriction applies.

Files provided "as is", with no warranties.
```

Example Response:
```
Distribution and modification of the the URW Garamond fonts are subject to the
Aladdin Free Public License <http://www.artifex.com/downloads/doc/Public.htm>

Copyright (c) 2000 URW++ Design & Development
```

In this instance, the LLM stopped extracting the license text prematurely when it encountered commentary interspersed within the license statements. In other instances, the presence of HTML tags also posed a challenge, as the LLM sometimes struggled to differentiate between license text and surrounding HTML elements. The observed issues could potentially be addressed by additional prompt engineering focused specifically on the encountered issues. 

### Converting License Text to License Obligations
The project explored the use of LLMs to convert license texts into structured obligations, similar to the format used by the [Open Source Automation Development Lab](https://www.osadl.org/OSADL-Open-Source-License-Checklists.oss-compliance-lists.0.html) (OSADL). The results were promising, with LLMs demonstrating the ability to grasp the core obligations embedded within license texts. However, challenges arose in adhering strictly to the specific, highly structured format employed by OSADL. While the generated obligations were generally accurate, they often lacked the precise phrasing and detailed categorization characteristic of OSADL's approach.

Example:

Obligations from OSADL:
```
USE CASE Font delivery
YOU MUST Provide Copyright notices
    ATTRIBUTE In Font File
YOU MUST Provide Trademark notice
    ATTRIBUTE In Font File
YOU MUST Provide License text
    ATTRIBUTE In Font File
IF Font Modification
    YOU MUST NOT Use "Bitstream" OR "Vera" In Font Name
YOU MUST NOT Sell Font
    ATTRIBUTE Stand-alone
YOU MUST NOT Promote
```

Obligations from LLM:
```
Include Copyright notices
Include Trademark notice
Include License text
Rename Font if Modified AND Font Name Contains "Bitstream" OR "Vera"
Do Not Sell Font By Itself
Do Not Promote
```

The output from the fine-tuned Gemini 1.0 Pro model, even after fine-tuning on the specific task of converting license text to obligations, still exhibited limitations in adhering perfectly to the OSADL format. While the generated obligations were generally accurate and captured the essence of the license terms, they often lacked the precise structure and detailed categorization required by OSADL.

Further testing on other samples revealed a similar pattern, with the model producing obligations that were conceptually correct but deviated from the standardized format. The lack of a readily available ground truth for comparison made it challenging to quantitatively assess the accuracy of these generated obligations.

### Obligation Clause Verification
The project developed a method for using LLMs to verify the accuracy of individual clauses within license obligations against the corresponding license text. This approach demonstrated high accuracy, with the LLM successfully categorizing clauses as valid, invalid, or partially valid with an estimated accuracy of 95-96%. The few instances of misclassification were primarily attributed to minor ambiguities or nuanced interpretations within the license text.

Example: W3C Software License  
License Text: 
```
This work is being provided by the copyright holders under the following license.

License
By obtaining and/or copying this work, you (the licensee) agree that you have read, understood, and will comply with the following terms and conditions.

Permission to copy, modify, and distribute this work, with or without modification, for any purpose and without fee or royalty is hereby granted, provided that you include the following on ALL copies of the work or portions thereof, including modifications:

    • The full text of this NOTICE in a location viewable to users of the redistributed or derivative work.
    • Any pre-existing intellectual property disclaimers, notices, or terms and conditions. If none exist, the W3C Software and Document Short Notice should be included.
    • Notice of any changes or modifications, through a copyright statement on the new code or document such as "This software or document includes material copied from or derived from [title and URI of the W3C document]. Copyright (c) [YEAR] W3C® (MIT, ERCIM, Keio, Beihang)."

Disclaimers
THIS WORK IS PROVIDED "AS IS," AND COPYRIGHT HOLDERS MAKE NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO, WARRANTIES OF MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE OR THAT THE USE OF THE SOFTWARE OR DOCUMENT WILL NOT INFRINGE ANY THIRD PARTY PATENTS, COPYRIGHTS, TRADEMARKS OR OTHER RIGHTS.

COPYRIGHT HOLDERS WILL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF ANY USE OF THE SOFTWARE OR DOCUMENT.

The name and trademarks of copyright holders may NOT be used in advertising or publicity pertaining to the work without specific, written prior permission. Title to copyright in this work will at all times remain with copyright holders.
```

Obligations:
```
USE CASE Source code delivery OR Binary delivery
YOU MUST Provide License text
    ATTRIBUTE Viewable
YOU MUST Provide Legal notices
IF NOT Legal notices
    YOU MUST Provide Copyright notice "W3C Software and Document Short Notice https://www.w3.org/Consortium/Legal/2015/copyright-software-short-notice.html"
IF Software modification
    YOU MUST Provide Copyright notice AND Modification notice
YOU MUST NOT Promote
```

LLM Response: 
```
Clause: YOU MUST Provide License text
Result: Valid
Explanation: The license text explicitly states that the licensee agrees to comply with the terms and conditions, which includes providing the full text of the NOTICE (license text) on ALL copies of the work or portions thereof, including modifications. (Section: Permission to copy, modify, and distribute this work)

Clause: ATTRIBUTE Viewable
Result: Partially Valid
Explanation: The license text does not explicitly mention the requirement to attribute the work as "Viewable". However, it does require the inclusion of the full text of the NOTICE (license text) on ALL copies of the work or portions thereof, including modifications. This implies that the attribution should be viewable, but the exact wording is not specified. (Section: Permission to copy, modify, and distribute this work)

Clause: YOU MUST Provide Legal notices
Result: Valid
Explanation: The license text requires the inclusion of any pre-existing intellectual property disclaimers, notices, or terms and conditions on ALL copies of the work or portions thereof, including modifications. This implies that the licensee must provide legal notices. (Section: Permission to copy, modify, and distribute this work)

Clause: IF NOT Legal notices
Result: Valid
Explanation: The license text requires the inclusion of the W3C Software and Document Short Notice if no pre-existing intellectual property disclaimers, notices, or terms and conditions exist. This implies that the licensee must provide a legal notice if none exist. (Section: Permission to copy, modify, and distribute this work)

Clause: IF Software modification
Result: Valid
Explanation: The license text requires the inclusion of the full text of the NOTICE (license text) on ALL copies of the work or portions thereof, including modifications. Additionally, it requires the inclusion of a copyright notice and modification notice if the software is modified. This implies that the licensee must provide a copyright notice and modification notice if the software is modified. (Section: Permission to copy, modify, and distribute this work)

Clause: YOU MUST NOT Promote
Result: Valid
Explanation: The license text explicitly states that the name and trademarks of copyright holders may NOT be used in advertising or publicity pertaining to the work without specific, written prior permission. This implies that the licensee must not promote the work without permission. (Section: Disclaimers)
```

### License Compatibility through Obligations
The project also explored the use of LLMs to assess license compatibility by analyzing the obligations imposed by different licenses. The LLM was able to identify differences in corresponding clauses between licenses, but it struggled to accurately determine whether those differences constituted compatibility issues. It frequently flagged conflicts where none existed, despite obligations being different in ways that wouldn't hinder compatibility. Conversely, it also failed to spot subtle but crucial differences that would render two licenses incompatible. This suggests that while LLMs show promise in identifying discrepancies between license obligations, they currently lack the nuanced understanding required to definitively assess license compatibility. Further refinement of the prompt and potentially the integration of additional techniques or external knowledge bases may be necessary to achieve reliable license compatibility assessment.

### LLM Comparison
The evaluation of various LLMs throughout the project revealed that most models released in 2024, particularly those under 12 billion parameters (which encompasses all models tested in this project), exhibit comparable performance in the realm of license-related tasks. While formal benchmarking was not conducted, manual evaluation suggests that Gemma 2 9b consistently outperforms other models, showcasing superior capabilities in handling nuanced cases and complex license structures. The superior performance of Gemma 2 9b is likely attributed to being the latest release among the tested models. However, it's crucial to acknowledge that performance can fluctuate depending on the specific task and dataset. The overarching observation is that recent models tend to yield similar results, with Gemma 2 9b demonstrating a slight advantage in certain scenarios. Therefore, for future work in this domain, Gemma 2 9b is recommended as the starting point for LLM-based solutions.

## 3. Semantic Search Algorithm Development and Refinement
The semantic search algorithm underwent several iterations and refinements throughout the project, evolving from a basic implementation to a sophisticated, standalone agent capable of accurate license identification and matching.

### Initial Implementation and Challenges
The initial approach, which operated on a line-by-line basis, effectively extracted lines likely to aid in license identification. However, it encountered significant challenges in the subsequent license matching stage. The cosine similarity method, utilizing sentence transformers embeddings, proved inadequate for accurately associating these extracted lines with their corresponding licenses. This limitation hindered the effectiveness of the approach, particularly when attempting to augment LLM-based license matching, as the semantic search component frequently failed to provide the LLM with reliable potential license matches for further evaluation.

### Hierarchical Semantic Search and Chunking
To address these challenges, a two-stage hierarchical semantic search approach was introduced. This involved first identifying the top K similar lines using the existing code and then performing a more fine-grained semantic search against all SPDX license text lines. Additionally, the algorithm was enhanced by incorporating chunking of code comments, which improved the reliability of the search but initially led to a slight decrease in accuracy.

### Fuzzy Matching and Standalone Agent
The breakthrough came with the exploration of fuzzy matching techniques, such as Levenshtein distance. This approach significantly improved both the accuracy and reliability of license matching (at the cost of increased latency), surpassing the performance of the previous hierarchical semantic search method.

### Performance Metrics
The semantic search algorithm was  evaluated on several self-created and independent datasets. The results showed that the algorithm consistently achieved near 100% accuracy in the license identification stage, successfully pinpointing the lines or sections of text relevant to licensing information. However, the accuracy in the license matching stage varied significantly depending on the dataset, ranging from 60% to 95%. 

### Atarashi Integration
The refined algorithm, now capable of functioning as a standalone agent for license identification and matching, was deemed suitable for integration into the Atarashi codebase.

## 3. Integration with FOSSology
The primary focus of the project was to explore the potential of LLMs in the context of license identification and management. While the refined semantic search algorithm was successfully integrated into the Atarashi codebase, the code developed for LLM evaluation and exploration was not designed for direct integration into Fossology. The experimental and exploratory nature of the LLM code, coupled with the need for further refinement and validation, makes it more suitable for a separate repository. This approach allows for continued development and experimentation with LLMs in license-related tasks without impacting the core functionality of Fossology. The separation also facilitates collaboration and contributions from the broader open-source community, fostering further innovation in this emerging field.

## 4. Documentation and Pull Requests
The project's contributions extend beyond code development and experimentation. The documentation and dissemination of findings were also prioritized, resulting in the following:

1. Atarashi Pull Request: The refined semantic search algorithm, along with necessary code modifications, was submitted as a [pull request](https://github.com/fossology/atarashi/pull/103) to the Atarashi repository.
2. New Repository with Codebase: A dedicated repository was created under the Fossology organization to house the comprehensive codebase developed during the project. This repository serves as a centralized resource for all code related to LLM evaluation, experimentation, and license-related tasks, promoting transparency and collaboration.
3. Fossology GSoC Wiki Updates: The Fossology [GSoC Wiki](https://fossology.github.io/gsoc/docs/2024/license-detection) was updated with weekly progress reports, providing a detailed and transparent record of the project's evolution.

<h1 align="center" id="deliverables">Deliverables</h1>
  
<div align="center">

| Tasks                                                  | Planned | Completed               |
| -------------------------------------------------------| ------- | ----------------------- |
| Dataset Creation                                       |   ✅    |   ✔️  (partial)          |
| LLM Comparison                                         |   ✅    |   ✔️  (partial)          |
| Semantic Search                                        |   ❌    |   ✅                    |
| Exploring LLM applications for license obligations     |   ❌    |   ✅                    |
| Exploring LLM applications for license compatiblity    |   ❌    |   ✅                    |
| Integration with FOSSology                             |   ✅    |   ✅                    |

</div>

<div align="left">


* While some datasets were initially created for testing (primarily for the license identification task), the development of comprehensive datasets tailored to the various applications evaluated would have constituted a substantial project in itself. Consequently, the existing datasets are not entirely suitable for direct testing, and many lack the labeling necessary for LLM evaluation.

* Regarding the LLM comparison, it's important to note that several of the applications explored in this project represent novel research directions, lacking established datasets or standardized metrics for evaluation. Therefore, while tests were conducted and assessed, the evaluation primarily relied on manual scrutiny rather than quantitative metrics like accuracy.

* The integration of the developed codebase is intended to be carried out within a separate repository. This decision aligns with the project's exploratory nature, as the code was not initially designed for immediate integration into the Fossology ecosystem.

</div>

<h1 align="center" id="future-goals">Future Goals</h1>

### Expand the License Dataset
The current datasets, while useful for initial exploration, have limitations in terms of diversity and comprehensiveness, particularly when it comes to licenses with subtle variations. Future work should focus on building a more extensive and nuanced dataset that specifically includes various versions and modifications of common licenses. This will enable more robust testing and evaluation of LLM and semantic search models, leading to improved accuracy and reliability in license identification and matching tasks.

### License Obligation Standardization
The project has made significant progress in extracting and validating license obligations using LLMs. However, further refinement is needed to ensure that the generated obligations are legally sound and consistently aligned with the standards set by OSADL. This involves improving the LLM's ability to interpret complex legal language, handle nuanced scenarios, and generate obligations that are both accurate and comprehensive.

### Integration of RAG for License Identification
Retrieval-Augmented Generation (RAG) models have shown promise in enhancing the accuracy of natural language processing tasks by incorporating external knowledge sources. Future work should explore the integration of RAG models into the license identification process. By leveraging a curated knowledge base of license information, RAG models could potentially improve the accuracy and robustness of license identification, particularly in cases where the license text is ambiguous or fragmented.

### Refine LLM-Based License Compatibility Assessment
While LLMs have shown potential in identifying discrepancies between license obligations, their ability to accurately assess license compatibility remains a challenge. Future work should focus on refining the LLM's understanding of legal nuances and compatibility conflicts. This could involve incorporating additional techniques, such as rule-based reasoning or external knowledge bases, to enhance the LLM's decision-making capabilities in this complex domain.

### Explore the Application of Fine-Tuning
The project has demonstrated the potential benefits of fine-tuning LLMs on specific tasks, such as converting license text to obligations. Future work should further explore the application of fine-tuning to enhance LLM performance in other license-related tasks, such as license matching and compatibility assessment. The development of specialized datasets and fine-tuning techniques could lead to significant improvements in accuracy and reliability.

<h1 align="center" id="key-takeaways">Key Takeaways</h1>

### Machine Learning Insights
Implementing LLMs for license detection showcased the strength and limitations of these models in legal text analysis.

### Semantic Search
Expertise Gained hands-on experience with semantic search and chunking techniques to improve text matching accuracy.

### Legal Interpretation with LLMs
Learned to leverage LLMs for extracting and validating legal obligations from open-source licenses.


<h1 align="center" id="conclusions">Conclusions</h1>

The exploration of LLMs in the realm of license identification and management has unveiled their potential as valuable tools, particularly in tasks such as extracting license text and generating initial drafts of license obligations. However, the research also highlights the challenges of applying LLMs to nuanced tasks like precise license matching and compatibility assessment, where the nuances of legal language and interpretation often necessitate human expertise. The current landscape of LLM applications in this domain is still nascent and underexplored, with many potential use cases lacking established datasets and requiring careful oversight from legal professionals. The project's findings highlight the importance of combining LLMs with other techniques, such as semantic search and expert legal knowledge, to achieve robust and reliable solutions for license compliance and open-source software management.

<h1 align="center" id="acknowledgements">Acknowledgements</h1>

I extend my sincere thanks to my mentors [Kaushlendra Pratap](https://github.com/Kaushl2208), [Gaurav Mishra](https://github.com/GMishx), [Anupam Ghosh](https://github.com/ag4ums), [Shaheem Azmal M MD](https://github.com/shaheemazmalmmd), and [Ayush Bharadwaj](https://github.com/hastagAB). Their guidance and expertise were invaluable throughout this project.

