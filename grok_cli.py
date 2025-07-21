#!/usr/bin/env python3
import os
import sys
from openai import OpenAI

# Official xAI API base URL (fixes SSL mismatch)
BASE_URL = "https://api.x.ai/v1"

def send_to_grok(prompt):
    api_key = os.getenv("XAI_API_KEY") or os.getenv("GROK_API_KEY")
    if not api_key:
        print("Error: Set XAI_API_KEY or GROK_API_KEY environment variable.")
        sys.exit(1)

    client = OpenAI(base_url=BASE_URL, api_key=api_key)

    try:
        response = client.chat.completions.create(
            model="grok-4",  # Use latest model; adjust as needed
            messages=[{"role": "user", "content": prompt}],
            max_tokens=500,  # Tune for summary length
            temperature=0.7  # Balanced creativity for branding insights
        )
        print("🔗 Grok Response:")
        print(response.choices[0].message.content.strip())
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: ./grok_cli.py \"Your prompt here\"")
        sys.exit(1)
    prompt = " ".join(sys.argv[1:])
    print(f"🔗 Sending to Grok: {prompt} ...")
    send_to_grok(prompt)
