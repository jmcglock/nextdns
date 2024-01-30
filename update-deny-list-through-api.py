import requests

# Replace these with your actual API Key and Profile ID
api_key = 'YOUR_API_KEY'
profile_id = 'YOUR_PROFILE_ID'

# The endpoint for updating the denylist based on NextDNS API structure
api_endpoint = f"https://api.nextdns.io/profiles/{profile_id}/denylist"

headers = {
    "Authorization": f"Bearer {api_key}",
    "Content-Type": "application/json",
}

# List of domains to add to the denylist
denylist_domains = [
    "click.googleanalytics.com",
    "claritybt.freshmarketer.com",
    "fwtracks.freshmarketer.com",
    # Add the rest of your domains here...
]

# Preparing the data to send in the format the API expects
data_to_send = {"data": denylist_domains}

# Sending the PATCH request to update the denylist
response = requests.patch(api_endpoint, json=data_to_send, headers=headers)

# Checking the response
if response.status_code == 200:
    print("Denylist updated successfully.")
else:
    print(f"Failed to update denylist. Status code: {response.status_code}, Message: {response.text}")