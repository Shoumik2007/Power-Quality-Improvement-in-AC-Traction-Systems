# Power-Quality-Improvement-in-AC-Traction-Systems
MATLAB/Simulink project for harmonic mitigation and power quality enhancement in AC electric traction systems using 3rd, 5th, and 7th tuned passive harmonic filters.
# Power Quality Improvement in AC Electric Traction Systems Using Passive Harmonic Filters

## Overview

This project presents the modelling, simulation, and harmonic analysis of a single-phase AC electric traction power supply system using MATLAB/Simulink. The study focuses on improving source-side power quality through the design and implementation of passive harmonic filters.

Modern railway traction systems employ power electronic converters that behave as nonlinear loads and introduce harmonic distortion into the supply network. To mitigate these harmonics, single-tuned passive filters for the 3rd, 5th, and 7th harmonic frequencies were designed and integrated into the system.

---

## Objectives

- Model a single-phase AC electric traction system in MATLAB/Simulink
- Analyze harmonic distortion caused by a bridge rectifier-fed DC motor
- Perform FFT-based harmonic spectrum analysis
- Design and implement passive harmonic filters
- Reduce Total Harmonic Distortion (THD)
- Improve overall power factor and power quality

---

## System Configuration

The simulated traction system consists of:

- Single-phase AC source (50 Hz)
- Source impedance (R-L feeder model)
- Step-down transformer
- Single-phase bridge rectifier
- DC smoothing choke
- Permanent Magnet DC (PMDC) motor
- Passive harmonic filter bank

---

## Harmonic Mitigation Strategy

Three shunt-connected single-tuned passive harmonic filters were designed and tuned to:

| Filter | Tuned Frequency |
|----------|----------|
| 3rd Harmonic Filter | 150 Hz |
| 5th Harmonic Filter | 250 Hz |
| 7th Harmonic Filter | 350 Hz |

The filters provide low impedance paths for the dominant harmonic currents, preventing them from propagating back into the source.

---

## Simulation Tools

- MATLAB
- Simulink
- Simscape Electrical
- FFT Analysis

---

## Results

### Performance Comparison

| Parameter | Unfiltered System | Filtered System |
|------------|------------|------------|
| Current THD | 62.93% | 7.65% |
| Power Factor | 0.587 | 0.820 |
| AC Voltage RMS | 74.88 V | 73.40 V |
| AC Current RMS | 8.40 A | 15.07 A |

### Harmonic Reduction

| Harmonic | Unfiltered | Filtered |
|------------|------------|------------|
| 3rd Harmonic | 5.57 A | ~0.10 A |
| 5th Harmonic | 2.02 A | ~0.05 A |
| 7th Harmonic | 1.72 A | ~0.04 A |

### Key Achievements

 Reduced THD from **62.93%** to **7.65%**

 Improved Power Factor from **0.587** to **0.820**

 Achieved compliance with recommended harmonic limits

 Improved source current waveform quality

---

## Repository Contents

```text
Technical_Report.pdf
harmonic_analysis.m
railway_traction_model.slx
railway_traction_model_mitigation.slx
screenshots/
```

---

## Screenshots

### Simulink Model

<img width="1600" height="770" alt="simulink diagram after mitigation" src="https://github.com/user-attachments/assets/9b7a289c-c4bc-4c42-9787-dec9ebe87e44" />



### Unfiltered Current Waveform

<img width="1600" height="989" alt="waveform before mitigation" src="https://github.com/user-attachments/assets/63e5e949-c63b-47c6-b573-40b411e6bcaf" />


### Filtered Current Waveform

<img width="1600" height="995" alt="waveform after mitigation" src="https://github.com/user-attachments/assets/e9689a51-c92f-4050-8c5f-d1d277ded953" />


### FFT Spectrum - Unfiltered

<img width="1600" height="1002" alt="FFT before mitigation" src="https://github.com/user-attachments/assets/26c94fff-38aa-4238-9590-8e017d995fb5" />


### FFT Spectrum - Filtered

<img width="1600" height="985" alt="FFT after mitigation" src="https://github.com/user-attachments/assets/02e4a69f-f2f6-4c04-8f58-94a94b406201" />


---

## Applications

- Railway Electrification Systems
- Electric Traction Engineering
- Power Quality Improvement
- Harmonic Mitigation
- Industrial Power Systems

---

## Future Scope

- Active Power Filter (APF) implementation
- Hybrid harmonic filtering techniques
- PWM converter-based traction drives
- Three-phase traction system modelling
- Real-time hardware implementation

---

## Author

**Shoumik Gunda**



---

## License

This project is released under the MIT License.
