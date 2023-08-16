/*
 * Copyright (c) 2009 Jacob Meuser <jakemsr@sdf.lonestar.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#ifndef SNDIO_AUDIO_DRIVER_H
#define SNDIO_AUDIO_DRIVER_H

#include <hydrogen/IO/AudioOutput.h>
#include <hydrogen/IO/NullDriver.h>

#ifdef H2CORE_HAVE_SNDIO

#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <unistd.h>
#include <inttypes.h>

#include <iostream>

#include <sndio.h>

#include <hydrogen/globals.h>


namespace H2Core
{

typedef int  (*audioProcessCallback)(uint32_t, void *);

/*
 * SNDIO Audio Driver
 */
class SndioAudioDriver : public AudioOutput
{
	H2_OBJECT
public:
	SndioAudioDriver(audioProcessCallback processCallback);
	~SndioAudioDriver();

	int init(unsigned bufferSize);
	int connect();
	void disconnect();

	void write();
	unsigned getBufferSize();
	unsigned getSampleRate();
	float* getOut_L();
	float* getOut_R();

	virtual void play();
	virtual void stop();
	virtual void locate(unsigned long nFrame);
	virtual void updateTransportInfo();
	virtual void setBpm(float fBPM);

private:
	struct sio_hdl *hdl;
	struct sio_par par;

	short* audioBuffer;
	float* out_L;
	float* out_R;

	audioProcessCallback processCallback;
};

#else

namespace H2Core {
	SndioAudioDriver(audioProcessCallback processCallback) : NullDriver(processCallback) {}

};

#endif

};

#endif

