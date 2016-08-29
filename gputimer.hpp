// gputimer.hpp
// Definition of the gputimer class
// X.G.Gerrmann
// 28-08-2016

#ifndef GPUTIMER_H
#define GPUTIMER_H

#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>

#define _DEVICE_ID 0

class gputimer{
	public:
		// initializer
		gputimer();
		// public child functions
		void start();
		float lap(std::string text);
		float stop();
	private:
		bool running;
		cudaEvent_t event_start, event_lap_prev, event_stop;
		float milliseconds;
		void show_time(std::string text, bool lap = false);
};
#endif
