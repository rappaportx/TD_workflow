# Workflow: Scenario (invalid v column)

## What is the purpose of this scenario?
The current workflow operators do not provide a means to prevent including v column when executing SELECT * in a Hive query. Preventing the inclusion of the v column is required in certain cases, for example, when recreating a table. This example shows how to exclude the v column by using the http>: operator to call Treasure Data API.

# How to Run
First, upload the project.

    # Upload
    $ td wf push invalid_v_column

Second, register the api key as a workflow secret.

    # Set secrets
    $ td wf secrets --project invalid_v_column --set td.apikey

Now, you can refer to api key as ${secret:td.apikey}.

Finaly, you can trigger the session manually.

    # Run
    $ td wf start invalid_v_column wf_invalid_v_column --session now


# Next Step

If you have any questions, please contact [support@treasure-data.com](support@treasure-data.com).
