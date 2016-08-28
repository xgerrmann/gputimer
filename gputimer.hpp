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

// extern "C"
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

//// Constructor
//gputimer::gputimer(){
//	running = false;
//	cudaEventCreate(&start);
//	cudaEventCreate(&lap_prev);
//	cudaEventCreate(&stop);
//}
//
//// Start function
//void gputimer::start(){
//	running = true;
//	cudaEventRecord(start,_DEVICE_ID);
//	cudaEventRecord(lap_prev,_DEVICE_ID);
//	milliseconds = 0;
//}
//
//// Lap function
//float gputimer::lap(std::string text){
//	if(running == true){
//		t = show_time(text,true);
//		cudaEventRecord(lap_prev,_DEVICE_ID);
//	}
//	else{
//		std::cout << "Timer has not been started yet";
//	}
//	return milliseconds/1000;
//}
//
//// Stop function
//float gputimer::stop(){
//	if(running == true){
//		show_time("",false); // also sets milliseconds
//		running	= false;
//	}
//	else{
//		std::cout << "Timer has not been started yet";
//	}
//	return milliseconds/1000;
//}
//
//// Show time function
//void gputimer::show_time(std::string text, bool lap){
//	if(lap){
//		cudaEventRecord(stop,_DEVICE_ID);
//		cudaEventSynchronize(stop);
//		cudaEventElapsedTime(&milliseconds, lap_prev, stop);
//		std::cerr<< text << ": Elapsed time: " << milliseconds/1000 << std::endl;
//	}
//	else{
//		cudaEventRecord(stop,_DEVICE_ID);
//		cudaEventSynchronize(stop);
//		cudaEventElapsedTime(&milliseconds, lap_prev, stop);
//		std::cerr<< "Total time: " << milliseconds/1000 << std::endl;
//	}
//	return;
// }
//
#endif
