# Workflow: td example (Result Output to BigQuery)

This example workflow ingests data using [Treasure Data's Writing Job Results into Google BigQuery](https://docs.treasuredata.com/display/public/INT/Google+BigQuery+Export+Integration) with [td](https://docs.digdag.io/operators/td.html) operator.

# Prerequisites

In order to register your credential in TreasureData, please create connection setting on [Connector UI](https://console.treasuredata.com/app/connections).

![](https://t.gyazo.com/teams/treasure-data/a44e6519d63b78dbdf7529ad6a5c7f46.png)

![](https://t.gyazo.com/teams/treasure-data/87cf742b9afb364acb5a364a07f91e9c.png)

The connection name is used in the dig file.

# How to Run

First, please upload your workflow project by `td wf push` command.

    # Upload
    $ td wf push td_bigquery

If you want to mask setting, please set it by `td wf secrets` command. For more details, please see [digdag documentation](https://docs.digdag.io/command_reference.html#secrets)

    # Set Secrets
    $ td wf secrets --project td_bigquery --set key

    # Set Secrets on your local for testing
    $ td wf secrets --local --set key

Now you can use these secrets by `${secret:}` syntax in the dig file.

You can trigger the session manually.

    # Run
    $ td wf start td_bigquery export_bigquery --session now

## Local mode

    # Run
    $ td wf run export_bigquery.dig

# Supplemental

Available parameters for `result_settings` are here.

- project: (string, required)
- dataset: (string, required)
- table: (string, required)
- mode: (string, optional, defaut append, options: append, replace, replace_backup, delete_in_advance)
- auto_create_table: (boolean, optional)
- max_bad_records: (int, optional, default 0)
- ignore_unknown_values: (boolean, default false)
- allow_quoted_newlines: (boolean, default false)
- schema_file: (string(json), required)

For more details, please see [Treasure Data documentation](https://docs.treasuredata.com/display/public/INT/Google+BigQuery+Export+Integration)

# Next Step

If you have any questions, please contact support@treasuredata.com.
