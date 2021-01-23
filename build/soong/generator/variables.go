package generator

import (
	"fmt"

	"android/soong/android"
)

func kyuofoxExpandVariables(ctx android.ModuleContext, in string) string {
	kyuofoxVars := ctx.Config().VendorConfig("kyuofoxVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if kyuofoxVars.IsSet(name) {
			return kyuofoxVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
