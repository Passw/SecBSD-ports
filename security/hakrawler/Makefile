COMMENT=	web crawler

MODGO_MODNAME=	github.com/hakluke/hakrawler
MODGO_VERSION=	v0.0.0-20221014120335-14e240b1e175

DISTNAME=	hakrawler-${MODGO_VERSION}
PKGNAME=	hakrawler-2.1

CATEGORIES=	security

HOMEPAGE=	https://github.com/hakluke/hakrawler

MAINTAINER= 	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+= 	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	cloud.google.com/go					 v0.26.0 \
	github.com/!burnt!sushi/toml				 v0.3.1 \
	github.com/!puerkito!bio/goquery			 v1.8.0 \
	github.com/andybalholm/cascadia				 v1.3.1 \
	github.com/antchfx/htmlquery				 v1.2.4 \
	github.com/antchfx/xmlquery				 v1.3.9 \
	github.com/antchfx/xpath				 v1.2.0 \
	github.com/census-instrumentation/opencensus-proto	 v0.2.1 \
	github.com/client9/misspell				 v0.3.4 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/envoyproxy/go-control-plane			 v0.9.1-0.20191026205805-5f8ba28d4473 \
	github.com/envoyproxy/protoc-gen-validate		 v0.1.0 \
	github.com/gobwas/glob					 v0.2.3 \
	github.com/gocolly/colly/v2				 v2.1.1-0.20220308084714-a61109486557 \
	github.com/golang/glog					 v0.0.0-20160126235308-23def4e6c14b \
	github.com/golang/groupcache				 v0.0.0-20210331224755-41bb18bfe9da \
	github.com/golang/mock					 v1.1.1 \
	github.com/golang/protobuf				 v1.5.2 \
	github.com/google/go-cmp				 v0.5.5 \
	github.com/jawher/mow.cli				 v1.1.0 \
	github.com/kennygrant/sanitize				 v1.2.4 \
	github.com/nlnwa/whatwg-url				 v0.1.0 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/prometheus/client_model			 v0.0.0-20190812154241-14fe0d1b01d4 \
	github.com/saintfish/chardet				 v0.0.0-20120816061221-3af4cd4741ca \
	github.com/stretchr/objx				 v0.2.0 \
	github.com/stretchr/testify				 v1.3.0 \
	github.com/temoto/robotstxt				 v1.1.2 \
	github.com/willf/bitset					 v1.1.10 \
	golang.org/x/crypto					 v0.0.0-20200622213623-75b288015ac9 \
	golang.org/x/exp					 v0.0.0-20190121172915-509febef88a4 \
	golang.org/x/lint					 v0.0.0-20190313153728-d0100b6bd8b3 \
	golang.org/x/net					 v0.0.0-20220225172249-27dd8689420f \
	golang.org/x/oauth2					 v0.0.0-20180821212333-d2e6202438be \
	golang.org/x/sync					 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys					 v0.0.0-20211216021012-1d35b9e2eb4e \
	golang.org/x/term					 v0.0.0-20210927222741-03fcf44c2211 \
	golang.org/x/text					 v0.3.7 \
	golang.org/x/tools					 v0.0.0-20190524140312-2c0ae7006135 \
	golang.org/x/xerrors					 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/appengine				 v1.6.7 \
	google.golang.org/genproto				 v0.0.0-20200526211855-cb27e3aa2013 \
	google.golang.org/grpc					 v1.27.0 \
	google.golang.org/protobuf				 v1.27.1 \
	honnef.co/go/tools					 v0.0.0-20190523083050-ea95bdfd59fc

MODGO_MODFILES=	\
	github.com/!puerkito!bio/goquery	 v1.5.1 \
	github.com/andybalholm/cascadia		 v1.1.0 \
	github.com/andybalholm/cascadia		 v1.2.0 \
	github.com/antchfx/htmlquery		 v1.2.3 \
	github.com/antchfx/xmlquery		 v1.3.4 \
	github.com/antchfx/xpath		 v1.1.10 \
	github.com/antchfx/xpath		 v1.1.6 \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/golang/groupcache		 v0.0.0-20200121045136-8c9f03a8e57e \
	github.com/golang/protobuf		 v1.2.0 \
	github.com/golang/protobuf		 v1.3.1 \
	github.com/golang/protobuf		 v1.3.2 \
	github.com/golang/protobuf		 v1.4.0 \
	github.com/golang/protobuf		 v1.4.0-rc.1 \
	github.com/golang/protobuf		 v1.4.0-rc.1.0.20200221234624-67d41d38c208 \
	github.com/golang/protobuf		 v1.4.0-rc.2 \
	github.com/golang/protobuf		 v1.4.0-rc.4.0.20200313231945-b860323f09d0 \
	github.com/golang/protobuf		 v1.4.1 \
	github.com/golang/protobuf		 v1.4.2 \
	github.com/golang/protobuf		 v1.5.0 \
	github.com/google/go-cmp		 v0.2.0 \
	github.com/google/go-cmp		 v0.3.0 \
	github.com/google/go-cmp		 v0.3.1 \
	github.com/google/go-cmp		 v0.4.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/temoto/robotstxt		 v1.1.1 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/lint			 v0.0.0-20181026193005-c67002cb31c3 \
	golang.org/x/lint			 v0.0.0-20190227174305-5b3e6a55c961 \
	golang.org/x/net			 v0.0.0-20180218175443-cbe0f9307d01 \
	golang.org/x/net			 v0.0.0-20180724234803-3673e40ba225 \
	golang.org/x/net			 v0.0.0-20180826012351-8a410e7b638d \
	golang.org/x/net			 v0.0.0-20190213061140-3a22650c66bd \
	golang.org/x/net			 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net			 v0.0.0-20190603091049-60506f45cf65 \
	golang.org/x/net			 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/net			 v0.0.0-20200421231249-e086a090c8fd \
	golang.org/x/net			 v0.0.0-20200813134508-3edf25e44fcc \
	golang.org/x/net			 v0.0.0-20201020065357-d65d470038a5 \
	golang.org/x/net			 v0.0.0-20210916014120-12bc252f5db8 \
	golang.org/x/sync			 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sys			 v0.0.0-20180830151530-49385e6e1522 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys			 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/sys			 v0.0.0-20200930185726-fdedc70b468f \
	golang.org/x/sys			 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys			 v0.0.0-20210423082822-04245dca01da \
	golang.org/x/sys			 v0.0.0-20210615035016-665e8c7367d1 \
	golang.org/x/term			 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/text			 v0.3.2 \
	golang.org/x/text			 v0.3.3 \
	golang.org/x/text			 v0.3.6 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools			 v0.0.0-20190114222345-bf090417da8b \
	golang.org/x/tools			 v0.0.0-20190226205152-f727befe758c \
	golang.org/x/tools			 v0.0.0-20190311212946-11955173bddd \
	google.golang.org/appengine		 v1.1.0 \
	google.golang.org/appengine		 v1.4.0 \
	google.golang.org/appengine		 v1.6.6 \
	google.golang.org/genproto		 v0.0.0-20180817151627-c66870c02cf8 \
	google.golang.org/genproto		 v0.0.0-20190819201941-24fa4b261c55 \
	google.golang.org/grpc			 v1.19.0 \
	google.golang.org/grpc			 v1.23.0 \
	google.golang.org/protobuf		 v0.0.0-20200109180630-ec00e32a8dfd \
	google.golang.org/protobuf		 v0.0.0-20200221191635-4d8936d0db64 \
	google.golang.org/protobuf		 v0.0.0-20200228230310-ab0ca4ff8a60 \
	google.golang.org/protobuf		 v1.20.1-0.20200309200217-e05f789c0967 \
	google.golang.org/protobuf		 v1.21.0 \
	google.golang.org/protobuf		 v1.22.0 \
	google.golang.org/protobuf		 v1.23.0 \
	google.golang.org/protobuf		 v1.23.1-0.20200526195155-81db48ad09cc \
	google.golang.org/protobuf		 v1.24.0 \
	google.golang.org/protobuf		 v1.26.0 \
	google.golang.org/protobuf		 v1.26.0-rc.1 \
	honnef.co/go/tools			 v0.0.0-20190102054323-c2f93a96b099

.include <bsd.port.mk>
