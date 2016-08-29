// gputimer.cpp
// Definition of the gputimer class
// X.G.Gerrmann
// 29-08-2016

//#ifndef GPUTIMER_H
//#define GPUTIMER_H
//
//#include <stdio.h>
//#include <iostream>
//#include <cuda_runtime.h>
//
//#define _DEVICE_ID 0
//
//// extern "C"
//class gputimer{
//	public:
//		// initializer
//		gputimer();
//		// public child functions
//		void start();
//		float lap(std::string text);
//		float stop();
//	private:
//		bool running;
//		cudaEvent_t event_start, event_lap_prev, event_stop;
//		float milliseconds;
//		void show_time(std::string text, bool lap = false);
//};
#include "gputimer.hpp"

// Constructor
gputimer::gputimer(){
	running = false;
	cudaEventCreate(&event_start);
	cudaEventCreate(&event_lap_prev);
	cudaEventCreate(&event_stop);
}

// Start function
void gputimer::start(){
	running = true;
	cudaEventRecord(event_start,_DEVICE_ID);
	cudaEventRecord(event_lap_prev,_DEVICE_ID);
	milliseconds = 0;
}

// Lap function
float gputimer::lap(std::string text){
	if(running == true){
		show_time(text,true);
		cudaEventRecord(event_lap_prev,_DEVICE_ID);
	}
	else{
		std::cout << "Timer has not been started yet";
	}
	return milliseconds/1000;
}

// Stop function
float gputimer::stop(){
	if(running == true){
		show_time("",false); // also sets milliseconds
		running	= false;
	}
	else{
		std::cout << "Timer has not been started yet";
	}
	return milliseconds/1000;
}

// Show time function
void gputimer::show_time(std::string text, bool lap){
	if(lap){
		cudaEventRecord(event_stop,_DEVICE_ID);
		cudaEventSynchronize(event_stop);
		cudaEventElapsedTime(&milliseconds, event_lap_prev, event_stop);
		std::cerr<< text << ": Elapsed time: " << milliseconds/1000 << std::endl;
	}
	else{
		cudaEventRecord(event_stop,_DEVICE_ID);
		cudaEventSynchronize(event_stop);
		cudaEventElapsedTime(&milliseconds, event_start, event_stop);
		std::cerr<< "Total time: " << milliseconds/1000 << std::endl;
	}
	return;
 }
//#endif
