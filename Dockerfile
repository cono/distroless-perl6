FROM debian

RUN apt-get update && apt-get dist-upgrade -qq && apt-get install -qq build-essential git

RUN git clone https://github.com/rakudo/rakudo.git
RUN mkdir -p /perl6
RUN cd /rakudo && perl Configure.pl --gen-moar --backends=moar --prefix=/perl6 --make-install


FROM gcr.io/distroless/base

COPY --from=0 /perl6 /perl6
ENTRYPOINT [ "/perl6/bin/moar", "--execname=perl6", "--libpath=/perl6/share/nqp/lib", "--libpath=/perl6/share/perl6/lib", "--libpath=/perl6/share/perl6/runtime", "/perl6/share/perl6/runtime/perl6.moarvm" ]
