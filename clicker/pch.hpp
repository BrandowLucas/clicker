#pragma once

#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
#define UNICODE
#define _UNICODE

#include <iostream>
#include <thread>
#include <random>
#include <algorithm>
#include <filesystem>

#include <windows.h>

using namespace std::chrono_literals;

#include "console.hpp"
#include "utils.hpp"
#include "config.hpp"
#include "keybind.hpp"
#include "vars.hpp"
