#!/bin/bash

FILENAME=$1
file=`echo "${FILENAME%%.*}"`
TIMED=$2
MAXNO=$3
xmlfile=$4
cat <<END > $xmlfile 
<?xml version="1.0"?>
	<!DOCTYPE tsung SYSTEM "/opt/local/share/tsung/tsung-1.0.dtd">
		<tsung loglevel="warning">
		<clients>
			<client host="localhost" maxusers="1000" use_controller_vm="true"/>
		</clients>

		<servers>
			<server host="122.248.250.132" port="80" type="tcp"/>
		</servers>

		<options>
			<option name="file_server" id="$file" value="$FILENAME"></option>
		</options>

		<load  subst="true">
			<arrivalphase phase="1" duration="$TIMED" unit="minute">
				<users maxnumber="$MAXNO" arrivalrate="5" unit="second"/>
			</arrivalphase>
		</load>

		<sessions>
			<session name="es_load" weight="1" type="ts_http">
				<request subst="true">
					<setdynvars sourcetype="file" fileid="$file"  delimiter="/" order="iter" >
						<var name="proname" />
						<var name="proid" />
					</setdynvars>
					<http url="/product/%%_proname%%/%%_proid%%" method="GET"/>
				</request>
			</session>
		</sessions>
</tsung>
END

