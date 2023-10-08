.PHONY: start format

# Starts Nomad in development mode
start:
	nomad agent -dev \
		-bind=0.0.0.0 \
		-network-interface=en0 \
		-config="./config/dev-config.hcl"

# Formats all Nomad job files
format:
	nomad fmt -recursive jobs