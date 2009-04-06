# use 5.008008;
use ExtUtils::MakeMaker;

# Add in the Ex::MM::Coverage stuff.  But silently ignore failure.
eval q{
    use ExtUtils::MakeMaker::Coverage;
    # I keep some modules outside of /usr/lib/perl5
    my $config = ExtUtils::MakeMaker::Coverage->config;
    $config->ignore( ['site_perl'] );
};

WriteMakefile(
    NAME              => 'POE::Session::PlainCall',
    VERSION_FROM      => 'lib/POE/Session/PlainCall.pm',
    LICENSE           => 'perl',
    PREREQ_PM         => {
                    Scalar::Util => 0,
            },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/POE/Session/PlainCall.pm', 
       AUTHOR         => 'Philip Gwyn <gwyn-at-pied.nu>') : ()),
);
