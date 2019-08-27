![Delphi](images/delphi.png)

# Overview

A simple demo showing how to call 
[Wasatch.NET](https://github.com/WasatchPhotonics/Wasatch.NET) from 
[Embarcadero Delphi](https://www.embarcadero.com/products/delphi) 
to control Wasatch Photonics spectrometers from object Pascal.

This demo was generously contributed by 
[Dr. Friedrich Menges](mailto:friedrich.menges@effemm2.de),
the Spectroscopy Ninja himself, developer of the
powerful and multi-vendor [Spectragryph](https://www.effemm2.de/spectragryph)
spectroscopy platform.  

# Dependencies

The demo has been tested with Wasatch.NET 1.0.27 (32-bit) and 
[Delphi Community Edition](https://www.embarcadero.com/products/delphi/starter)
(10.2 Tokyo) on a Windows 10 (64-bit) host.

# Contents

- Imports/
    - Contains sample component imports of various .NET and WasatchNET
      dependencies.  You can and probably should generate your own
      using RAD Studio (see Build Notes), but these are provided as
      working examples.  

# Build Notes

Remember to use the provided script to 
[register Wasatch.NET's COM assembly](https://github.com/WasatchPhotonics/Wasatch.NET#post-install-step-2-com-registration-optional)
(with Admin privs), else you won't be able to find the COM assemblies.

You'll want to import a TLB for WasatchNET.dll from the most recent 
[Wasatch.NET](https://github.com/WasatchPhotonics/Wasatch.NET) release.

- Component &rarr; Import Component &rarr; Import a Type Library

You'll also have to import the mscorlib\_tlb and system\_windows\_forms\_tlb
packages from .NET Framework 3.5.

# History

- 2019-08-27 1.0.2
    - updated for Wasatch.NET 2.0.27
- 2018-07-23 1.0.1
    - cleanup by Friedrich
- 2018-07-20 1.0.0
    - Initial version (built against Wasatch.NET 1.0.27)

![Spectroscopy Ninja](images/ninja.png)
