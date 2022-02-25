#!/bin/bash

cd /tmp
mkdir ckcmp
cd ckcmp
git clone https://github.com/frcteam195/CKROSSDL.git \
	&& cd /tmp/ckcmp/CKROSSDL \
	&& git checkout 2e9821423a237a1206e3c09020778faacfe430be \
	&& ./configure \
	&& make -j8 \
	&& sudo make install \
	&& cd /tmp \
	&& rm -Rf /tmp/cmcmp/*

git clone https://github.com/frcteam195/CKimgui.git \
	&& cd /tmp/ckcmp/CKimgui \
	&& make -j4 \
	&& sudo make install \
	&& cd /tmp \
	&& rm -Rf /tmp/cmcmp