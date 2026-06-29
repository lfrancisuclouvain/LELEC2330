# LELEC2330 — Opto-electronic and Power Devices
## Formula Sheet (Intrinsic Properties of Semiconductors I–III)

*Consolidated reference for Prof. L. A. Francis's LELEC2330 lecture notes.*
*Symbols and conventions follow the three lecture notes in this repository.*

> **License.** © Laurent A. Francis, UCLouvain. Released under
> [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

---

## 0. Physical constants

| Constant | Symbol | Value |
|---|---|---|
| Planck constant | $h$ | $6.626\times10^{-34}\ \text{J·s}$ |
| Reduced Planck | $\hbar=h/2\pi$ | $1.055\times10^{-34}\ \text{J·s}$ |
| Boltzmann constant | $k_B$ | $1.381\times10^{-23}\ \text{J/K}=8.617\times10^{-5}\ \text{eV/K}$ |
| Elementary charge | $e$ | $1.602\times10^{-19}\ \text{C}$ |
| Free-electron mass | $m_0$ | $9.109\times10^{-31}\ \text{kg}$ |
| Speed of light | $c$ | $2.998\times10^{8}\ \text{m/s}$ |
| Vacuum permittivity | $\varepsilon_0$ | $8.854\times10^{-12}\ \text{F/m}$ |
| Thermal energy (300 K) | $k_BT$ | $\approx 25.9\ \text{meV}=0.0259\ \text{eV}$ |

---

## 1. Lecture I — Quantum description and band structure

### Photons, matter waves, uncertainty
| Concept | Relation |
|---|---|
| Photoelectric effect | $E_{\text{kin}}=h\nu-\Phi$ |
| de Broglie wavelength | $\lambda=h/p$ |
| Photon momentum | $p=h/\lambda=E/c$ |
| Heisenberg | $\Delta x\,\Delta p\geq\hbar/2$ |

### Schrödinger equation
| Concept | Relation |
|---|---|
| Born rule | $P(x)=\lvert\Psi(x)\rvert^2$, $\ \int\lvert\Psi\rvert^2dx=1$ |
| Operators | $\hat p=-i\hbar\,\partial_x$, $\ \hat E=i\hbar\,\partial_t$ |
| Time-dependent SE | $i\hbar\,\partial_t\Psi=\hat H\Psi$ |
| Hamiltonian | $\hat H=-\dfrac{\hbar^2}{2m}\nabla^2+V$ |
| Time-independent SE | $-\dfrac{\hbar^2}{2m}\psi''+V\psi=E\psi$ |
| Infinite well | $E_n=\dfrac{n^2\pi^2\hbar^2}{2mL^2}$ |

### Bands and dispersion
| Concept | Relation |
|---|---|
| Bloch theorem | $\psi_k=u_k(x)e^{ikx}$, $\ u_k$ periodic |
| Kronig–Penney | $P\,\dfrac{\sin\alpha a}{\alpha a}+\cos\alpha a=\cos ka$ |
| Free electron (Sommerfeld) | $E=\dfrac{\hbar^2k^2}{2m}$ |
| Group velocity | $v_g=\dfrac{1}{\hbar}\dfrac{dE}{dk}$ |
| Reciprocal vectors | $\mathbf b_i\cdot\mathbf a_j=2\pi\delta_{ij}$ |
| DOS (3D, band edge) | $g(E)\propto\sqrt{E}$, $\ \times 2$ for spin |

---

## 2. Lecture II — Carriers, statistics and transport

### Effective mass and holes
| Concept | Relation |
|---|---|
| Crystal-momentum force | $\hbar\,dk/dt=F$ |
| Effective mass | $\dfrac{1}{m^*}=\dfrac{1}{\hbar^2}\dfrac{d^2E}{dk^2}$ |
| Parabolic band | $E\approx E_0+\dfrac{\hbar^2}{2}\sum_i\dfrac{(k_i-k_{0,i})^2}{m^*_i}$ |
| Full band | $J=0$; hole has charge $+e$, same $v_g$ |

### Statistics and carrier concentrations
| Concept | Relation |
|---|---|
| Fermi–Dirac | $f(E)=\dfrac{1}{1+e^{(E-E_F)/k_BT}}$ |
| Electron density | $n=N_c\,e^{-(E_c-E_F)/k_BT}$ |
| Hole density | $p=N_v\,e^{-(E_F-E_v)/k_BT}$ |
| Effective DOS | $N_{c,v}=2\big(2\pi m^*k_BT/h^2\big)^{3/2}$ |
| Mass-action law | $np=n_i^2=N_cN_v\,e^{-E_g/k_BT}$ |
| Intrinsic density | $n_i=\sqrt{N_cN_v}\,e^{-E_g/2k_BT}$ |
| Intrinsic Fermi level | $E_F=\dfrac{E_c+E_v}{2}+\dfrac{k_BT}{2}\ln\dfrac{N_v}{N_c}$ |

### Transport, mobility, Hall
| Concept | Relation |
|---|---|
| Mobility | $\mu=e\tau/m^*$ |
| Drift current | $J=e(n\mu_n+p\mu_p)E=\sigma E$ |
| Resistivity | $\rho=1/\sigma$ |
| Lattice / impurity scattering | $\mu_L\propto T^{-3/2}$, $\ \mu_I\propto T^{3/2}/N_I$ |
| Matthiessen's rule | $1/\mu=1/\mu_L+1/\mu_I$ |
| Hall coefficient | $R_H=\mp\dfrac{1}{ne},\ \dfrac{1}{pe}$ (e / h) |
| Cyclotron frequency | $\omega_c=eB/m^*$ |

---

## 3. Lecture III — Optical properties, absorption and strain

### Optical constants and absorption
| Concept | Relation |
|---|---|
| Refractive index (lossless) | $n_r=\sqrt{\varepsilon\mu}\approx\sqrt{\varepsilon}$ |
| Complex index / permittivity | $\tilde n=n_r+i\kappa$, $\ \tilde\varepsilon=\tilde n^2$ |
| Real/imag link | $\varepsilon_1=n_r^2-\kappa^2$, $\ \varepsilon_2=2n_r\kappa$ |
| Absorption coefficient | $\alpha=4\pi\kappa/\lambda=2\omega\kappa/c$ |
| Beer–Lambert | $I(x)=I_0e^{-\alpha x}$, depth $\delta=1/\alpha$ |

### Interfaces and metrology
| Concept | Relation |
|---|---|
| Snell's law | $n_1\sin\theta_i=n_2\sin\theta_t$ |
| Critical angle | $\sin\theta_c=n_2/n_1$ |
| Normal-incidence $R$ | $R=\dfrac{(n_r-1)^2+\kappa^2}{(n_r+1)^2+\kappa^2}$ |
| Brewster angle | $\tan\theta_B=n_2/n_1$ |
| Ellipsometry | $\rho=r_p/r_s=\tan\Psi\,e^{i\Delta}$ |
| Kramers–Kronig | $\varepsilon_1-1=\dfrac{2}{\pi}\mathcal P\!\!\int_0^\infty\dfrac{\omega'\varepsilon_2(\omega')}{\omega'^2-\omega^2}d\omega'$ |

### Optical transitions and emission
| Concept | Relation |
|---|---|
| Fermi's golden rule | $W=\dfrac{2\pi}{\hbar}\lvert M\rvert^2\,\delta(E_f-E_i-\hbar\omega)$ |
| Joint DOS | $J\propto\displaystyle\int dS/\lvert\nabla_k(E_c-E_v)\rvert$ |
| Direct edge | $\alpha\propto(\hbar\omega-E_g)^{1/2}$ |
| Indirect edge | $\alpha\propto(\hbar\omega-E_g\pm E_{\text{ph}})^{2}$ |
| Urbach tail | $\alpha=\alpha_0\,e^{(\hbar\omega-E_1)/E_0}$ |
| Tauc plot | $(\alpha\hbar\omega)\propto(\hbar\omega-E_g)^{n}$, $\ n=\tfrac12,\ 2$ |

### Light management and strain
| Concept | Relation |
|---|---|
| ARC (quarter-wave) | $n_c=\sqrt{n_0 n_s}$, $\ d=\lambda/4n_c$ |
| Piezoresistivity | $\Delta\rho/\rho=\sum_j\pi_{ij}\sigma_j$ |

---

## 4. Reference values at 300 K

| Quantity | Si | Ge | GaAs |
|---|---|---|---|
| Bandgap $E_g$ (eV) / type | 1.12 / indirect | 0.66 / indirect | 1.42 / direct |
| $N_c$ (cm⁻³) | $2.8\times10^{19}$ | $1.0\times10^{19}$ | $4.7\times10^{17}$ |
| $N_v$ (cm⁻³) | $1.04\times10^{19}$ | $6.0\times10^{18}$ | $7.0\times10^{18}$ |
| $n_i$ (cm⁻³) | $1.5\times10^{10}$ | $2.4\times10^{13}$ | $1.8\times10^{6}$ |
| $\mu_n$ (cm²/V·s) | 1350 | 3900 | 8500 |
| $\mu_p$ (cm²/V·s) | 480 | 1900 | 400 |
| $\varepsilon_r$ | 11.7 | 16.0 | 13.1 |
| $n_r$ (visible) | ≈ 3.5–4.0 | — | ≈ 3.5–3.9 |

*Canonical textbook values (Neamen, Appendix B). $n_i$ for Si is the course value
$1.5\times10^{10}$; recent measurements give $\approx 1.0\times10^{10}$ — state your convention.*
