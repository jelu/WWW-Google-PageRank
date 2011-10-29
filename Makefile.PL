use ExtUtils::MakeMaker;


WriteMakefile(
	      NAME => "WWW::Google::PageRank",
	      VERSION_FROM => "lib/WWW/Google/PageRank.pm",
	      'dist' => { COMPRESS=>"gzip", SUFFIX=>"gz" },
	      AUTHOR => 'Yuri Karaban <ykar@cpan.org>',
	      PREREQ_PM => {
			    'LWP::UserAgent' => 0,
			    'URI::Escape' => 0
			   }
	     );
