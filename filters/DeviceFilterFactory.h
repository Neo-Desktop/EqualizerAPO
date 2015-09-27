/*
	This file is part of EqualizerAPO, a system-wide equalizer.
	Copyright (C) 2014  Jonas Thedering

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License along
	with this program; if not, write to the Free Software Foundation, Inc.,
	51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*/

#pragma once

#include <string>

#include "IFilterFactory.h"
#include "IFilter.h"

class DeviceFilterFactory : public IFilterFactory
{
public:
#ifndef NO_FILTERENGINE
	void initialize(FilterEngine* engine) override;
#endif
	std::vector<IFilter*> startOfConfiguration() override;
	std::vector<IFilter*> createFilter(const std::wstring& configPath, std::wstring& command, std::wstring& parameters) override;
	std::vector<IFilter*> endOfFile(const std::wstring& configPath) override;

	static bool matchDevice(const std::wstring& deviceString, const std::wstring& pattern);

private:
	bool deviceMatches;
	std::wstring deviceString;
};
