#include <thread>
#include "hikang.h"

int main()
{
    HiKangCamera cam;
    cam.Wait4Device();
    cam.Init();

    std::thread cam_thread = std::thread([&cam]() {
        cam.Run();
    });
    cam_thread.detach();

    while (true) {
        std::this_thread::sleep_for(std::chrono::milliseconds(200));
        cam.SaveImg();
        cam.SaveDepth();
    }

    return 0;
}
