# === Class veeam_val::params
#
# = Author
# Justin King <jking@lanterncredit.com>
# forked from Niels Engelen <niels@foonet.be>
#
class veeam_val::params {
  # Define all default parameters
  $pkg_ensure     = 'present'
  $pkg_name       = 'veeam'

  $service_cmd    = 'veeamconfig'
  $service_name   = 'veeamservice'
  $service_ensure = 'running'

  $setup          = false

  $target         = 'local'
  $reponame       = 'VeeamRepository_Puppet'
  $repopath       = '/data/VeeamBackup_Puppet'

  $cifsserver     = ''
  $cifspath       = ''
  $nfsserver      = ''
  $nfspath        = ''
  $vbrname        = ''
  $vbrserver      = ''
  $vbrserverport  = '10002'

  $domain         = ''
  $username       = ''
  $password       = ''

  $job_ensure     = 'present'
  $type           = 'volume'
  $jobname        = 'VeeamBackupJob_Puppet'
  $blocksize      = 4096
  $compression    = 1
  $objects        = '/dev/sda'
  $points         = 7

  $postjob        = ''
  $prejob         = ''

  $schedule       = true
  $schedulecron   = '0 0 * * *'

  $license        = ''
}
