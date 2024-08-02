attestation_file=attestation.json
downloaded_file=downloaded_attestation.json

#upload an existing attestation to archivista
response=$(curl --fail-with-body -o response.json -X POST https://archivista.uds.dev/upload -d @$attestation_file)
curl_rc=$?
response_body=$(cat response.json)

# Check if the post was successful
if [ $curl_rc -eq 0 ]; then
    # Extract the gitoid from the JSON response
    gitoid=$(echo "$response_body" | jq -r '.gitoid')

    # use the gitoid to download the attestation from archivista
    curl -o $downloaded_file https://archivista.uds.dev/download/$gitoid

    # compare the downloaded file to the original file to make sure they match
    if cmp -s $attestation_file $downloaded_file; then
        echo "Downloaded $downloaded_file matches uploaded $attestation_file"
        exit 0
    else
        echo "Downloaded $downloaded_file DOES NOT match $attestation_file"
        exit 1
    fi
else
    echo "Curl command failed or did not return a 200 status code."
    echo "Response: $response_body"
    exit 1
fi
