use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Parse::ABNF',
    VERSION_FROM      => 'lib/Parse/ABNF.pm', # finds $VERSION
    PREREQ_PM         => {
      Parse::RecDescent => 0,
    },
    ($] >= 5.005 ?     
      (ABSTRACT_FROM  => 'lib/Parse/ABNF.pm', # retrieve abstract from module
       AUTHOR         => 'Bjoern Hoehrmann <bjoern@hoehrmann.de>') : ()),

    LICENSE           => 'perl',
    'dist'            => {
      PREOP     => 'chmod 600 Makefile.PL',
      TARFLAGS	=> '--group=none --owner=bjoern --mode=a+rw -cvf',
    },

);
