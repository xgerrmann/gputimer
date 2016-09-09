#include "gputimer.hpp"
#include <unistd.h>

int main(){
	gputimer watch;
	watch.start();
	for(int i = 0; i<10; i++){
		sleep(1);
		watch.lap("Loop time");
		watch.lap();
	}
	watch.stop();

	return 0;
}
