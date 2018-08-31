#!/bin/bash -e

unity_dir="${1}"

if [ -d "${unity_dir}" ]; then

	WRAPPER_LOCATION="${unity_dir}/Unity.app/Contents/Tools/PVRTexTool"
	ORIGINAL_LOCATION="${unity_dir}/Unity.app/Contents/Tools/PVRTexTool_orig"

	echo "Uninstalling from ${unity_dir}"

	if [ -f "$ORIGINAL_LOCATION" ]; then
		echo "Removing wrapper"
		cp "$ORIGINAL_LOCATION" "$WRAPPER_LOCATION"
		echo "Done"
	else
		echo "Original PVRTexTool not found. Doing nothing."
	fi
else
	echo "ERROR: Directory '$unity_dir' not found"
fi
