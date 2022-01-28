# Print Environment Variables

Print the environment variables from pod:

1. Create a pod with the following specs:
    * Pod name: **print-envars-greeting**.
    * Container name: **print-env-container**
    * Container image: **bash**
    * Create three environment variables:
        * `GREETING` and its value should be **Welcome to**
        * `COMPANY` and its value should be **xFusionCorp**
        * `GROUP` and its value should be **Group**
    * Use **command** to `echo ["$(GREETING) $(COMPANY) $(GROUP)"]` message.

2. Apply the `print-envars-greeting.yaml` file

        kubectl apply -f print-envars-greeting.yaml

3. You can check the output using `kubctl logs -f [ pod-name ]` command.

