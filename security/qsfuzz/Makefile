COMMENT=	query string fuzz

V=	1.0.2
MODGO_MODNAME=	github.com/ameenmaali/qsfuzz
MODGO_VERSION=	v${V}

DISTNAME=	qsfuzz-${MODGO_VERSION}
PKGNAME=	qsfuzz-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/ameenmaali/qsfuzz

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	cloud.google.com/go					 v0.26.0 \
	github.com/!burnt!sushi/toml				 v0.3.1 \
	github.com/!e!d!d!y!c!j!y/fake-useragent		 v0.2.0 \
	github.com/!one!of!one/xxhash				 v1.2.2 \
	github.com/!puerkito!bio/goquery			 v1.5.1 \
	github.com/alecthomas/template				 v0.0.0-20160405071501-a0175ee3bccc \
	github.com/alecthomas/units				 v0.0.0-20151022065526-2efee857e7cf \
	github.com/andybalholm/cascadia				 v1.1.0 \
	github.com/armon/consul-api				 v0.0.0-20180202201655-eb2c6b5be1b6 \
	github.com/beorn7/perks					 v1.0.0 \
	github.com/cespare/xxhash				 v1.1.0 \
	github.com/client9/misspell				 v0.3.4 \
	github.com/coreos/bbolt					 v1.3.2 \
	github.com/coreos/etcd					 v3.3.10+incompatible \
	github.com/coreos/go-semver				 v0.2.0 \
	github.com/coreos/go-systemd				 v0.0.0-20190321100706-95778dfbb74e \
	github.com/coreos/pkg					 v0.0.0-20180928190104-399ea9e2e55f \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/dgrijalva/jwt-go				 v3.2.0+incompatible \
	github.com/dgryski/go-sip13				 v0.0.0-20181026042036-e10d5fee7954 \
	github.com/fatih/color					 v1.9.0 \
	github.com/fsnotify/fsnotify				 v1.4.7 \
	github.com/ghodss/yaml					 v1.0.0 \
	github.com/go-kit/kit					 v0.8.0 \
	github.com/go-logfmt/logfmt				 v0.4.0 \
	github.com/go-stack/stack				 v1.8.0 \
	github.com/gogo/protobuf				 v1.2.1 \
	github.com/golang/glog					 v0.0.0-20160126235308-23def4e6c14b \
	github.com/golang/groupcache				 v0.0.0-20190129154638-5b532d6fd5ef \
	github.com/golang/mock					 v1.1.1 \
	github.com/golang/protobuf				 v1.3.1 \
	github.com/google/btree					 v1.0.0 \
	github.com/google/go-cmp				 v0.2.0 \
	github.com/gopherjs/gopherjs				 v0.0.0-20181017120253-0766667cb4d1 \
	github.com/gorilla/websocket				 v1.4.0 \
	github.com/grpc-ecosystem/go-grpc-middleware		 v1.0.0 \
	github.com/grpc-ecosystem/go-grpc-prometheus		 v1.2.0 \
	github.com/grpc-ecosystem/grpc-gateway			 v1.9.0 \
	github.com/hashicorp/hcl				 v1.0.0 \
	github.com/jonboulle/clockwork				 v0.1.0 \
	github.com/jtolds/gls					 v4.20.0+incompatible \
	github.com/julienschmidt/httprouter			 v1.2.0 \
	github.com/kisielk/errcheck				 v1.1.0 \
	github.com/kisielk/gotool				 v1.0.0 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/kr/logfmt					 v0.0.0-20140226030751-b84e30acd515 \
	github.com/kr/pretty					 v0.1.0 \
	github.com/kr/pty					 v1.1.1 \
	github.com/kr/text					 v0.1.0 \
	github.com/magiconair/properties			 v1.8.1 \
	github.com/mattn/go-colorable				 v0.1.4 \
	github.com/mattn/go-isatty				 v0.0.11 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.1 \
	github.com/mitchellh/mapstructure			 v1.1.2 \
	github.com/mwitkow/go-conntrack				 v0.0.0-20161129095857-cc309e4a2223 \
	github.com/oklog/ulid					 v1.3.1 \
	github.com/pelletier/go-toml				 v1.2.0 \
	github.com/pkg/errors					 v0.8.0 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/prometheus/client_golang			 v0.9.3 \
	github.com/prometheus/client_model			 v0.0.0-20190129233127-fd36f4220a90 \
	github.com/prometheus/common				 v0.4.0 \
	github.com/prometheus/procfs				 v0.0.0-20190507164030-5867b95ac084 \
	github.com/prometheus/tsdb				 v0.7.1 \
	github.com/rogpeppe/fastuuid				 v0.0.0-20150106093220-6724a57986af \
	github.com/sirupsen/logrus				 v1.2.0 \
	github.com/smartystreets/assertions			 v0.0.0-20180927180507-b2de0cb4f26d \
	github.com/smartystreets/goconvey			 v1.6.4 \
	github.com/soheilhy/cmux				 v0.1.4 \
	github.com/spaolacci/murmur3				 v0.0.0-20180118202830-f09979ecbc72 \
	github.com/spf13/afero					 v1.1.2 \
	github.com/spf13/cast					 v1.3.0 \
	github.com/spf13/jwalterweatherman			 v1.0.0 \
	github.com/spf13/pflag					 v1.0.3 \
	github.com/spf13/viper					 v1.6.2 \
	github.com/stretchr/objx				 v0.1.1 \
	github.com/stretchr/testify				 v1.2.2 \
	github.com/subosito/gotenv				 v1.2.0 \
	github.com/tmc/grpc-websocket-proxy			 v0.0.0-20190109142713-0ad062ec5ee5 \
	github.com/ugorji/go					 v1.1.4 \
	github.com/xiang90/probing				 v0.0.0-20190116061207-43a291ad63a2 \
	github.com/xordataexchange/crypt			 v0.0.3-0.20170626215501-b2862e3d0a77 \
	go.etcd.io/bbolt					 v1.3.2 \
	go.uber.org/atomic					 v1.4.0 \
	go.uber.org/multierr					 v1.1.0 \
	go.uber.org/zap						 v1.10.0 \
	golang.org/x/crypto					 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/lint					 v0.0.0-20190313153728-d0100b6bd8b3 \
	golang.org/x/net					 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/oauth2					 v0.0.0-20180821212333-d2e6202438be \
	golang.org/x/sync					 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sys					 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/text					 v0.3.0 \
	golang.org/x/time					 v0.0.0-20190308202827-9d24e82272b4 \
	golang.org/x/tools					 v0.0.0-20190328211700-ab21143f2384 \
	google.golang.org/appengine				 v1.1.0 \
	google.golang.org/genproto				 v0.0.0-20180817151627-c66870c02cf8 \
	google.golang.org/grpc					 v1.21.0 \
	gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
	gopkg.in/check.v1					 v1.0.0-20180628173108-788fd7840127 \
	gopkg.in/ini.v1						 v1.51.0 \
	gopkg.in/resty.v1					 v1.12.0 \
	gopkg.in/yaml.v2					 v2.2.4 \
	honnef.co/go/tools					 v0.0.0-20190102054323-c2f93a96b099
MODGO_MODFILES=	\
	github.com/beorn7/perks			 v0.0.0-20180321164747-3a771d992973 \
	github.com/go-logfmt/logfmt		 v0.3.0 \
	github.com/gogo/protobuf		 v1.1.1 \
	github.com/golang/protobuf		 v1.2.0 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/prometheus/client_golang	 v0.9.1 \
	github.com/prometheus/client_model	 v0.0.0-20180712105110-5c3871d89910 \
	github.com/prometheus/common		 v0.0.0-20181113130724-41aa239b4cce \
	github.com/prometheus/procfs		 v0.0.0-20181005140218-185b4288413d \
	golang.org/x/crypto			 v0.0.0-20180904163835-0709b304e793 \
	golang.org/x/lint			 v0.0.0-20181026193005-c67002cb31c3 \
	golang.org/x/net			 v0.0.0-20180218175443-cbe0f9307d01 \
	golang.org/x/net			 v0.0.0-20180826012351-8a410e7b638d \
	golang.org/x/net			 v0.0.0-20181114220301-adae6a3d119a \
	golang.org/x/net			 v0.0.0-20181220203305-927f97764cc3 \
	golang.org/x/net			 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net			 v0.0.0-20190522155817-f3200d17e092 \
	golang.org/x/sync			 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sys			 v0.0.0-20180830151530-49385e6e1522 \
	golang.org/x/sys			 v0.0.0-20180905080454-ebe1bf3edb33 \
	golang.org/x/sys			 v0.0.0-20181107165924-66b7b1311ac8 \
	golang.org/x/sys			 v0.0.0-20181116152217-5ac8a444bdc5 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/tools			 v0.0.0-20180221164845-07fd8470d635 \
	golang.org/x/tools			 v0.0.0-20190114222345-bf090417da8b \
	golang.org/x/tools			 v0.0.0-20190311212946-11955173bddd \
	google.golang.org/grpc			 v1.19.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.0.0-20170812160011-eb3733d160e7 \
	gopkg.in/yaml.v2			 v2.2.1

.include <bsd.port.mk>
