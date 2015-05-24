node localhost {
  notify { 'jdk7_message': 
    message => hiera('jdk7_message'),
  }

  class { '::jdk7':                                                                 
    jdk_file         => hiera(jdk7::source::package,"jdk-7u71-linux-x64.rpm"),
    jdk_url          => hiera(jdk7::source::url,"http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.rpm"),
    jdk_version      => hiera(jdk7::version,"1.7.0_71"),
    wget_cookie      => hiera(jdk7::cookie,"Cookie: oraclelicense=accept-securebackup-cookie"),
    java_home        => hiera(jdk7::java_home,"/usr/java"),
    java_default     => hiera(jdk7::java_default,"/usr/java/default"),
    alternativesprio => hiera(jdk7::alternatives::priority,"1903"),
    urandom          => hiera(jdk7::urandom,false),
    oyas_repo        => hiera(jdk7::oyas_repo,'oyasrepo-1.1-1.noarch'),
    oyas_source      => hiera(jdk7::oyas_source,'http://packages.ozguryazilim.com.tr/centos/6/noarch/oyasrepo-1.1-1.noarch.rpm')
  } 
  
  contain '::jdk7' 
}
