AI-Powered Software License Identification

This project is designed to identify and extract relevant chunks of text that pertain to software licenses using large language models (LLMs). It is particularly useful for developers and legal teams who need to quickly identify licensing information in large bodies of text.

## Table of Contents
- [Table of Contents](#table-of-contents)
- [Installation](#installation)
  - [Step 1: Clone the repository](#step-1-clone-the-repository)
  - [Step 2: Install dependencies](#step-2-install-dependencies)
  - [Dependencies:](#dependencies)
- [Setting Up API Keys:](#setting-up-api-keys)
  - [Step 1: Obtain an API Key](#step-1-obtain-an-api-key)
  - [Step 2: Set Up Environment Variables](#step-2-set-up-environment-variables)
- [Basic Usage](#basic-usage)
  - [Step 1: Prepare Your Input](#step-1-prepare-your-input)
  - [Step 2: Run the Script](#step-2-run-the-script)
  - [Output](#output)

## Installation

To run this project, you need to install the required dependencies. The project uses Python 3.8+.

### Step 1: Clone the repository
```bash
git clone https://github.com/Hero2323/GSoC-24.git
cd yourproject
```

### Step 2: Install dependencies

You can install the required packages using the `requirements.txt` file:

```bash
pip install -r requirements.txt
```

### Dependencies:

The project relies on the following libraries:

* loguru==0.7.2
* openai==1.31.1
* pandas==2.0.3
* tenacity==8.3.0
* ratelimit==2.2.1
* Nirjas==1.0.1
* fuzzywuzzy[speedup]>=0.18.0
* langchain_groq
* tiktoken

Ensure these are installed correctly before proceeding.

## Setting Up API Keys:

To run the LLM models, you need to set up your API keys for the relevant services. The project primarily uses the OpenAI API for its LLM capabilities.

### Step 1: Obtain an API Key

* Visit OpenAI and sign up for an account if you don’t have one.

* Navigate to the API section to obtain your API key.

### Step 2: Set Up Environment Variables

You can add your API key to your environment variables to keep it secure:

For Linux/MacOS:

```bash
export OPENAI_API_KEY='your-api-key-here'
```

For Windows:

```bash
set OPENAI_API_KEY='your-api-key-here'
```

Alternatively, you can create a `.env` file in the project root directory and add your API key there:

```bash
OPENAI_API_KEY=your-api-key-here
```

## Basic Usage

### Step 1: Prepare Your Input

Place your input text files in the appropriate directory (e.g., `input/`).

### Step 2: Run the Script

To run the script that processes the input files and identifies license-relevant chunks, use:

```bash
python main.py
```

The script will read the input files, process them using the LLM, and output the results to the `output/` directory.

### Output

The output files will contain the identified chunks of text relevant to licenses. The format and structure of the output can be customized as per your needs.




