# Filtering Signal by Kaiser Window (Code)

By [Naimur Rahman](https://github.com/nayeem-rafi)
## [Click for Files](https://drive.google.com/drive/folders/1HLn6rSSEs3STmUyxSTug7WqCjp_cQAF3?usp=drive_link)

This project demonstrates the design and implementation of Low Pass Filter (LPF), High Pass Filter (HPF), Band Reject Filter (BRF), and Band Pass Filter (BPF) using the Kaiser window in MATLAB. Each filter is designed to meet specific attenuation requirements and cutoff frequencies, showcasing the flexibility of the Kaiser window in creating different types of filters.

## Introduction
The Kaiser window is widely used in digital signal processing for designing FIR filters due to its ability to control the main lobe width and side lobe attenuation. This project uses the Kaiser window to implement four types of filters: LPF, HPF, BRF, and BPF.

## Objective
The main objectives of this project are:
1. To design and implement different filters (LPF, HPF, BRF, BPF) using the Kaiser window.
2. To analyze and visualize each filter's impulse and frequency response.
3. To observe the effect of Kaiser window parameters (attenuation `A`, transition width) on filter performance.

## Description
Each filter type is designed based on specific parameters:
- **Passband edge frequency (`wp`)**
- **Stopband edge frequency (`ws`)**
- **Passband ripple (`dp`)** and **Stopband ripple (`ds`)**

The design process includes calculating the attenuation (`A`) based on the smallest ripple, determining the Kaiser window's beta parameter (`B`), and computing the filter order (`M`). 

## How Each Filter Works
Each section below details how the code works for each filter, including the parameter setup, impulse response, and frequency response calculation.

---

## Low Pass Filter (LPF) Design Using Kaiser Window
### Code Analysis
The LPF is implemented with a passband edge frequency (`wp`), a stopband edge frequency (`ws`), and ripple specifications in both bands. The Kaiser window parameters (`B` and `M`) are calculated based on the minimum ripple requirement, and the desired impulse response is achieved by using the sinc function.

### Running Principle
1. **Define filter parameters**: `wp`, `ws`, `dp`, `ds`.
2. **Calculate attenuation `A`**: Based on ripple requirements.
3. **Determine Kaiser window parameters**: Calculate `B` and `M` based on `A`.
4. **Calculate impulse response**: Use the sinc function scaled by the Kaiser window.
5. **Plot impulse and frequency responses**.

<h1 align= "center">


**Output Filter System LPF**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/33769e7b-80d8-4bfa-8e2b-c00cbccc77bc", width="620">
</p>
---

## High Pass Filter (HPF) Design Using Kaiser Window
### Code Analysis
The HPF is designed by defining `wp` and `ws` frequencies and constructing a filter that attenuates frequencies below the passband while allowing frequencies above it. Similar to the LPF, the Kaiser window parameters are calculated, and the impulse response is obtained by taking the difference between an ideal high-pass impulse and the Kaiser-windowed LPF impulse.

### Running Principle
1. **Define filter parameters**: `wp`, `ws`, `dp`, `ds`.
2. **Calculate attenuation `A`**.
3. **Calculate Kaiser window parameters**: Calculate `B` and `M`.
4. **Create HPF impulse response**: Use the sinc function for LPF, subtract from a delta function.
5. **Plot impulse and frequency responses**.

<h1 align= "center">


**Output Filter System HPF**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/e85d838b-a7b8-4769-8318-541c1a73059a", width="620">
</p>
---

## Band Pass Filter (BPF) Design Using Kaiser Window
### Code Analysis
The BPF allows a specific frequency range (between `wp1` and `wp2`) while attenuating frequencies outside this range. The Kaiser window is applied to a combined sinc function that defines the passband.

### Running Principle
1. **Define filter parameters**: `ws1`, `wp1`, `wp2`, `ws2`, `ds1`, `ds2`, `dp`.
2. **Calculate attenuation `A`**.
3. **Calculate Kaiser window parameters**: Calculate `B` and `M`.
4. **Create BPF impulse response**: Use combined sinc functions for band pass filtering.
5. **Plot impulse and frequency responses**.

<h1 align= "center">


**Output Filter System BPF**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/c1d3ee74-c189-4e8e-bf90-6763df14cc9f", width="620">
</p>
---
## Band Reject Filter (BRF) Design Using Kaiser Window
### Code Analysis
The BRF blocks a range of frequencies between `wp1` and `wp2` while allowing frequencies outside this range. Kaiser parameters are calculated, and the ideal impulse response is obtained by combining the low-pass and high-pass components and applying the Kaiser window.

### Running Principle
1. **Define filter parameters**: `ws1`, `wp1`, `wp2`, `ws2`, `ds1`, `ds2`, `dp`.
2. **Calculate attenuation `A`**.
3. **Calculate Kaiser window parameters**: Calculate `B` and `M`.
4. **Create BRF impulse response**: Use combined sinc functions to represent the band reject.
5. **Plot impulse and frequency responses**.

<h1 align= "center">


**Output Filter System BRF**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/84c20aa7-05d6-4714-83da-29aab2433d83", width="620">
</p>

---

## Band Pass Filter (BPF) Design Using Kaiser Window
### Code Analysis
The BPF allows a specific frequency range (between `wp1` and `wp2`) while attenuating frequencies outside this range. The Kaiser window is applied to a combined sinc function that defines the passband.

### Running Principle
1. **Define filter parameters**: `ws1`, `wp1`, `wp2`, `ws2`, `ds1`, `ds2`, `dp`.
2. **Calculate attenuation `A`**.
3. **Calculate Kaiser window parameters**: Calculate `B` and `M`.
4. **Create BPF impulse response**: Use combined sinc functions for band pass filtering.
5. **Plot impulse and frequency responses**.

---
## How to Run

1. **Ensure MATLAB is installed:** Run this project on MATLAB 2019 or later for optimal compatibility.
2. **Run each code block individually** in MATLAB’s script editor. Each filter has its own script section (LPF, HPF, BRF, BPF), and can be executed separately to see the impulse and frequency responses.
3. **View results:** Each filter script generates plots for the impulse response (IR) and frequency response, illustrating the filter characteristics.

## Key Steps

1. **Define filter parameters:** Choose values for the passband and stopband edge frequencies (`wp`, `ws`) and the passband/stopband ripples (`dp`, `ds`).
2. **Calculate filter attenuation `A`:** Use the minimum ripple value to determine `A`.
3. **Determine Kaiser window parameters:** Calculate `B` (beta) and `M` (filter order) based on `A` and the desired transition width.
4. **Create impulse response (IR):** Use the sinc function scaled by the Kaiser window to define the filter’s IR.
5. **Plot responses:** Visualize the impulse and frequency responses for analysis.

## Applications of Kaiser Window Filtering

The Kaiser window-based LPF, HPF, BRF, and BPF filters have wide applications across various fields of digital signal processing and engineering, as outlined below:

1. **Audio Signal Processing**:
   - **Noise Reduction**: LPFs are used to filter out high-frequency noise from audio signals, enhancing sound quality.
   - **Equalization**: HPFs and BPFs help modify specific frequency bands, enabling audio equalization to adjust or improve particular frequency ranges.
   - **Sub-band Coding**: BPFs can separate audio into sub-bands, useful in encoding and compression.

2. **Communication Systems**:
   - **Channel Selection**: BPFs enable the selection of specific communication channels within a frequency spectrum.
   - **Interference Mitigation**: BRFs are used to remove narrow-band interference, improving signal quality.
   - **Demodulation**: LPFs and HPFs help isolate and extract baseband signals for demodulation.

3. **Medical Signal Processing**:
   - **ECG Signal Filtering**: LPFs remove high-frequency noise in ECG signals, while HPFs address low-frequency drift, enhancing waveform clarity for diagnostics.
   - **EEG Analysis**: BPFs isolate brain wave frequencies (e.g., alpha, beta) for neurological studies.
   - **Ultrasound Imaging**: BRFs reduce noise, enhancing clarity by removing frequencies linked to artifacts.

4. **Image Processing**:
   - **Image Smoothing and Sharpening**: LPFs smooth images by reducing high-frequency details, while HPFs enhance edges and finer details.
   - **Feature Extraction**: BPFs assist in extracting spatial frequency features for edge detection or texture analysis.
   - **Noise Reduction**: BRFs are applied in MRI and CT imaging to filter frequencies associated with electronic noise.

5. **Radar and Sonar Systems**:
   - **Target Detection**: BPFs allow radar and sonar systems to isolate specific frequencies for clearer target detection.
   - **Clutter Reduction**: HPFs and BRFs remove background noise and clutter, enhancing moving target detection.
   - **Frequency Modulation**: LPFs are used to demodulate signals by isolating low-frequency components in radar systems.

6. **Seismology**:
   - **Earthquake Analysis**: LPFs and BPFs filter seismic signals, improving earthquake detection by reducing irrelevant data.
   - **Vibration Analysis**: HPFs help isolate vibrations for studying tremors and geological activities.
   - **Signal Denoising**: BRFs remove unwanted frequencies from seismic data, filtering out interference.

7. **Instrumentation and Control Systems**:
   - **Sensor Signal Conditioning**: LPFs smooth sensor data, especially useful in analog-to-digital conversions where high-frequency noise can interfere.
   - **Feedback Systems**: HPFs reject disturbances outside the control bandwidth, enhancing stability.
   - **Environmental Monitoring**: BPFs and BRFs isolate specific signals in air quality or water purity sensors.

The Kaiser window's flexibility allows precise control over filter characteristics, making it ideal for applications in diverse fields. By adjusting parameters such as passband width, side lobe attenuation, and transition sharpness, custom FIR filters can meet the specific demands of areas from telecommunications to biomedical engineering.

## Conclusion

This project demonstrates the flexibility of the Kaiser window in designing different types of FIR filters with precise control over side lobes and transition widths. By modifying Kaiser window parameters, each filter's frequency response can be tuned to meet specific application requirements. The project provides a foundation for creating customizable digital filters for various signal processing tasks.
