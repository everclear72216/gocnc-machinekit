
export MACHINEKIT_INI=./GoCNC.ini

sudo $(which config-pin) -f - <<- EOF

	#P8.46	pruout	# X-AXIS DIR
	#P8.45	pruout	# X-AXIS STEP

	#P8.44	pruout	# Y-AXIS DIR
	#P8.43   pruout  # Y-AXIS STEP

	#P8.42	pruout 	# Z-AXIS DIR
	#P8.41	pruout 	# Z-AXIS-STEP

	#P8.40	pruout 	# A-AXIS DIR
	#P8.39	pruout	# A-AXIS STEP

	P8.37	input	# X-AXIS HOME
	P8.35	input	# Y-AXIS HOME
	P8.33	input	# Z-AXIS HOME
	P8.31	input	# A-AXIS HOME

	P8.38	output	# X-AXIS ENABLE
	P8.36	output	# Y-AXIS ENABLE
	P8.34	output	# Z-AXIS ENABLE
	P8.32	output	# A-AXIS ENABLE

	#P8.29	pruin 	# X-AXIS ENCODER A
	#P8.30	pruin	# X-AXIS ENCODER B

	#P8.27	pruin	# Y-AXIS ENCODER A
	#P8.28	pruin	# Y-AXIS ENCODER B

	P8.25	input	# X-AXIS LIMIT
	P8.26	input   # Y-AXIS LIMIT
	P8.23	input	# Z-AXIS LIMIT
	P8.24	input 	# A-AXIS LIMIT

	#P8.21	pruin	# Z-AXIS ENCODER A
	#P8.20	pruin	# Z-AXIS ENCODER B

	P8.22	input	# EMERGENCY STOP

	#P9.42	pruin	# A-AXIS ENCODER B
	#P9.26	pruin	# A-AXIS ENCODER A

EOF
