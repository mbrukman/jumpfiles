package k8s

import (
	"github.com/hofstadter-io/jumpfiles/cuefig/cloud"
)

// Common settings inherited by all AKS clusters
#AKS_Common: cloud.#AzureConfig & {
	Labels: {
		devenv: "k8s"
		...
	}

	// Network tags
	Tags: "devk8s"

	...
}

// AKS_Configs is a map into the sizing options
// This definition is unified with the following (3) definitions
// - EKS_Common (above)
// - AzureConfig (../cloud/azure.cue)
#AKS_Configs: [Name=string]: #AKS_Common & {
	size: Name
	Labels: {
		size: Name
		...
	}
	...
}

#AKS_Configs: {

	xs: {
		...
	}

	sm: {
		...
	}

	md: {
		...
	}

	lg: {
		...
	}

	xl: {
		...
	}

	xxl: {
		...
	}

	xxxl: {
		...
	}

	...
}
