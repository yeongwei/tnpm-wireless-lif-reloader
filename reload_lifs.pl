## YeongWei
## Updated 2015.09.12

#!/usr/bin/perl

use strict;
use warnings;

my $HOME_DIR = "/var/tmp/";
my $CRIT_LIF = $HOME_DIR . "critical_lif.lif";
my $CLR_LIF = $HOME_DIR . "cleared_lif.lif";

my $LOADER_DIR = "/appl/virtuo/var/loader/spool/huaweigsmmscs_v200r009c02sph102/V200R009C02SPH102_wei/";
my $LOADER_LIF = $LOADER_DIR . "M83888175-#-A-#-10Sep2015-#-13\:15-#-13\:30-#-MSOFTX_H014-#-I-#-RT-#-P-16187454.lif";

my $SLEEP_DUR = 5;

my $RELOAD_CRIT_CMD = "cp" . " " . $CRIT_LIF . " " . $LOADER_LIF;
my $RELOAD_CLR_CMD = "cp" . " " . $CLR_LIF . " " . $LOADER_LIF;

my $TOGGLE = 0;
while ( 1 ) {
	if ($TOGGLE) {
		#print "Critical" . "\n";
		`$RELOAD_CRIT_CMD`;
		$TOGGLE = 0;
	} else {
		#print "Cleared" . "\n";
		`$RELOAD_CLR_CMD`;
		$TOGGLE = 1;
	}

	sleep $SLEEP_DUR;
}
