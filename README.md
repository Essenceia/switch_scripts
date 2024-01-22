# Switch Utilities Script Documentation

This documentation provides information about the utility scripts for the D2020
switch.

## Configuration File

The default configuration file should be named `config.sh`. An example
configuration file called `config_example.sh` is included in the repository.

## Silence

The Silence script resets the switch's fan PWM. The `PWD` value is specified in
the `config.sh` file and is constrained within the range of `[0;255]`.

This script connects to the switch's CLI via Telnet and escalates privileges
from the CLI to the Linux root shell before overwriting the default fan PWM
value.

Invocation:

```bash 
./silence.sh 
```

## License

This code uses the MIT license, all rights belong to Julia Desmazes.
