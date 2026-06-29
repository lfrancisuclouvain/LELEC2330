# LELEC2330 — Opto-electronic and Power Devices
## Lecture Notes — Intrinsic Properties of Semiconductors (II)

*Companion notes to the lecture slides. Prof. Laurent A. Francis, UCLouvain (ICTEAM Institute & Louvain Engineering School).*
*Primary text: Neamen [Ref]; see the full **References** at the end.*

> **License.** © Laurent A. Francis, UCLouvain. Released under
> [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Share and adapt with
> attribution, under the same license. Textbook figures and third-party images from the
> original slides are **not** included and remain under their own copyright.

---

### How to read these notes

Lecture I built the **band structure**: where the allowed electronic states are. Lecture II
puts **carriers into those states and makes them move**. Four movements:
**(1)** what an electron *is* in a crystal (wave packet, effective mass) and the birth of the
**hole**; **(2)** how many carriers occupy the bands (**density of states**, Fermi–Dirac, the
**intrinsic concentration** $n_i$); **(3)** how they carry current (**drift, mobility,
resistivity**); **(4)** how we *measure* carrier sign, density and effective mass (**Hall
effect**, cyclotron resonance).

> **Guiding thread (continued).**
> **Solar cell** — sunlight creates electron–hole pairs; both carriers must move to a contact.
> **LED** — injected current supplies electrons and holes that **recombine** to emit light.
> Without holes there is no solar-cell current and no LED emission. Keep asking: *how many
> carriers are there, and how fast do they move?*

---

## 1. Electrons and holes (Chapter 3.2)

### 1.1 Band occupation versus temperature

At **T = 0 K** the valence band is completely full and the conduction band completely empty —
a perfect semiconductor is then an insulator. At **T > 0 K**, thermal energy promotes some
electrons across the gap into the conduction band, leaving empty states (**holes**) behind in
the valence band. Carriers exist only because $T \neq 0$.

### 1.2 Where is the electron? — the wave packet

A single electron in the crystal is not one Bloch state but a **superposition** built from many
states across the first Brillouin zone, with amplitude $A(k)$:

$$\psi(x,t) = \sum_{k\in \text{BZ}} A(k)\,\psi_k(x)\,e^{-iE(k)t/\hbar}
\;\xrightarrow{\;N\ \text{large}\;}\;
\int_{\text{BZ}} A(k)\,\psi_k(x)\,e^{-iE(k)t/\hbar}\,dk.$$

This **wave packet** is localized and moves at the **group velocity**

$$\boxed{\;v_g = \frac{1}{\hbar}\frac{dE}{dk}\;}\qquad\left(\mathbf{v}_g = \frac{1}{\hbar}\nabla_k E(\mathbf k)\ \text{in 3D}\right).$$

### 1.3 Group velocity and Bragg reflection

In a **perfect crystal** the group velocity is **zero at the Brillouin-zone boundaries**: there
$dE/dk = 0$. Physically the electron wave is **Bragg-reflected** by the periodic lattice — it
cannot propagate, it stands. (Lattice vibrations, absent here, are what eventually allow
scattering — §3.)

### 1.4 Effective mass

Apply an external force $F$ (electric, magnetic…). It changes the crystal momentum,
$\hbar\,dk/dt = F$, so the acceleration is

$$a = \frac{dv_g}{dt} = \frac{1}{\hbar}\frac{d}{dt}\frac{dE}{dk}
= \frac{1}{\hbar^2}\frac{d^2E}{dk^2}\,F.$$

Comparing with $a = F/m^*$ defines the **effective mass**:

$$\boxed{\;\frac{1}{m^*} = \frac{1}{\hbar^2}\frac{d^2E}{dk^2}\;}$$

The crystal's response to a force is bundled into $m^*$ — the electron then behaves like a free
particle of mass $m^*$. The curvature of $E(k)$ *is* the mass: sharp bands → light carriers,
flat bands → heavy carriers.

In 3D, $m^*$ is a **second-rank tensor** $\left(\frac{1}{m^*}\right)_{ij}=\frac{1}{\hbar^2}\frac{\partial^2E}{\partial k_i\partial k_j}$,
which can be **diagonalized** to at most **three** principal masses.

### 1.5 Parabolic approximation

Devices operate with carriers near the **band extrema**, so expand $E(k)$ to second order around
an extremum $k_0$:

$$E(\mathbf k)\approx E(\mathbf k_0)+\frac{\hbar^2}{2}\sum_{i=1}^{3}\frac{(k_i-k_{0,i})^2}{m^*_i}.$$

The constant-energy surfaces are then **ellipsoids**. Depending on symmetry we speak of:
- **transverse** and **longitudinal** masses ($m_t$, $m_\ell$) — e.g. the elongated silicon valleys,
- a single **isotropic** mass when the ellipsoid is a sphere (e.g. the GaAs conduction-band minimum).

### 1.6 Defining the hole

The current density from electrons in a band is

$$\mathbf J = \frac{-e}{V}\sum_{\text{occupied }k}\mathbf v_g(k).$$

For a **completely full band** the sum of group velocities vanishes by symmetry:

$$\boxed{\text{a full band carries NO current.}}$$

Now remove **one** electron (state $k_e$). The remaining current is the full-band zero *minus*
the contribution of the missing electron:

$$\mathbf J = 0-\frac{-e}{V}\mathbf v_g(k_e)=\frac{+e}{V}\,\mathbf v_g(k_e).$$

This is exactly the current of a fictitious particle of **charge $+e$** moving at the **same group
velocity** as the missing electron — a **hole**. Holes are the bookkeeping device that lets us
track a nearly-full valence band by following the few empty states instead of the ~$10^{23}$
electrons.

### 1.7 Properties of electrons and holes

| | Electron | Hole |
|---|---|---|
| Lives in | conduction band | valence band |
| Charge | $-e$ | $+e$ |
| Occupies | states near the band **minimum** | empty states near the band **maximum** |
| Effective mass | positive (upward curvature) | positive (defined from the downward-curving band) |

> **Why holes matter.** In a solar cell, **both** electrons and holes contribute to the
> photocurrent. In an LED, light is emitted only when **one electron recombines with one hole**.
> No holes → no solar-cell current, no LED emission.

### 1.8 Insulators, semiconductors and (semi)metals at 0 K

The distinction is entirely about band filling and the gap:
- **Insulator** — full valence band, empty conduction band, **large** gap.
- **Semiconductor** — same picture but a **small** gap, so thermal/optical excitation populates
  the bands at useful rates.
- **Metal / semimetal** — a partially filled band, or conduction and valence bands that
  **overlap**, so carriers exist even at 0 K.

### 1.9 Real band structures and light/heavy holes

Si and Ge have **indirect** gaps; GaAs is **direct** (Lecture I). The valence band is not single:
**spin–orbit coupling** splits it, producing **light-hole** and **heavy-hole** bands (different
curvatures → different effective masses). The conduction-band constant-energy surfaces are the
ellipsoids of §1.5.

---

## 2. Density of states and intrinsic carrier concentration

### 2.1 The Fermi level is the chemical potential of electrons

The **chemical potential** $\mu$ of electrons is the free-energy change when one electron is added
to or removed from the system — the energy carried per electron. In a semiconductor this is the
**Fermi level** $E_F$. Think of it as the **"electronic pressure"** inside the material.

### 2.2 Fermi–Dirac statistics

Because electrons are **fermions** (Pauli), the probability that a state at energy $E$ is occupied
at temperature $T$ is the **Fermi–Dirac distribution**:

$$f(E)=\frac{1}{1+\exp\!\big((E-\mu)/k_BT\big)},\qquad \mu \equiv E_F.$$

At $E=E_F$ the occupancy is exactly $1/2$; the transition sharpens as $T\to 0$.

> **Why the Fermi level matters.** It fixes the **equilibrium carrier concentrations**, the
> **built-in voltage** and the maximum achievable voltage of a solar cell, and the **injection
> efficiency** and radiative-recombination probability of an LED.

### 2.3 Density of states near a band edge

The number of carriers in a band is the **density of allowed states** weighted by their
**occupancy**:

$$n=\int_{\text{band}} g(E)\,f(E)\,dE.$$

Near the conduction-band minimum $E_c$, counting states inside the energy ellipsoids gives the
characteristic **3D edge form**

$$g_c(E)=\frac{1}{2\pi^2}\left(\frac{2m^*_{\text{dos}}}{\hbar^2}\right)^{3/2}\sqrt{E-E_c},$$

where $m^*_{\text{dos}}$ is the **density-of-states effective mass** (a geometric mean of the
ellipsoid masses, including valley degeneracy). A symmetric expression holds below $E_v$ for holes.

### 2.4 Carrier concentrations — the Boltzmann approximation

When the Fermi level sits well inside the gap ($E_c-E_F\gg k_BT$), the Fermi–Dirac tail reduces to
a **Boltzmann factor**, and the integrals collapse to closed forms:

$$n=N_c\,\exp\!\left(-\frac{E_c-E_F}{k_BT}\right),\qquad
p=N_v\,\exp\!\left(-\frac{E_F-E_v}{k_BT}\right),$$

with the **effective densities of states**

$$N_c=2\left(\frac{2\pi m^*_n k_BT}{h^2}\right)^{3/2},\qquad
N_v=2\left(\frac{2\pi m^*_p k_BT}{h^2}\right)^{3/2}.$$

$N_c$ and $N_v$ act as if all conduction (valence) states were collapsed into a single effective
level at the band edge.

### 2.5 The mass-action law and the intrinsic case

Multiplying $n$ and $p$, the Fermi level **cancels out**:

$$\boxed{\,np=N_cN_v\,\exp\!\left(-\frac{E_g}{k_BT}\right)=n_i^2\,}$$

a result independent of doping (the **mass-action law**, valid at equilibrium). For an **intrinsic**
semiconductor every conduction electron came from the valence band, so $n=p\equiv n_i$:

$$n_i=\sqrt{N_cN_v}\;\exp\!\left(-\frac{E_g}{2k_BT}\right).$$

Because $g(E)$ is nearly symmetric in the two bands, the intrinsic Fermi level sits **near the
middle of the gap**:

$$E_F=\frac{E_c+E_v}{2}+\frac{k_BT}{2}\ln\frac{N_v}{N_c}\;\approx\;\text{midgap}.$$

### 2.6 How few carriers — and why we dope

For **silicon at 300 K**: the atomic density is $\approx 5\times10^{22}\ \text{cm}^{-3}$, yet the
intrinsic carrier density is only $n_i\approx 10^{10}\ \text{cm}^{-3}$ — about **one mobile carrier
per $10^{12}$ atoms**. Enough to build devices, but intrinsic silicon is far **too resistive** for
most uses. This is the motivation for **doping** (next lectures): deliberately adding impurities to
raise $n$ or $p$ by orders of magnitude.

> **Device implications of temperature.** Raising $T$ increases $n_i$ and recombination, which
> **lowers a solar cell's open-circuit voltage**; in an LED it increases leakage and **reduces
> efficiency**.

---

## 3. Electrical parameters — drift, mobility, resistivity (Chapter 5)

### 3.1 Drude picture and the equation of motion

In the **Drude model**, carriers move like gas particles accelerated by the field and randomly
**scattered** by collisions. The equation of motion with a damping (scattering) time $\tau$ is

$$m^*\frac{d\mathbf v}{dt}=-e\mathbf E-\frac{m^*\mathbf v}{\tau}.$$

A field would accelerate carriers indefinitely; scattering off lattice atoms instead produces a
steady **drift velocity**.

### 3.2 Mobility

At **low field**, drift velocity is proportional to the field:

$$\mathbf v_d=-\mu_n\mathbf E\ (\text{electrons}),\qquad \mathbf v_d=+\mu_p\mathbf E\ (\text{holes}),
\qquad \boxed{\,\mu=\frac{e\tau}{m^*}\,}$$

**Mobility** $\mu$ measures how readily a carrier responds to a field — high mobility comes from
long scattering times and light effective mass. Typical values at 300 K (in cm²/V·s): silicon
electrons $\approx 1400$, silicon holes $\approx 470$; **GaAs electrons $\approx 8500$**. Electron
mobility exceeds hole mobility by roughly **3:1**.

> **Why mobility matters.** High mobility → faster carrier collection, lower resistive losses and
> higher efficiency in a **solar cell**; lower series resistance, less heating and higher power
> efficiency in an **LED**. (GaAs's very high electron mobility is one reason it excels in
> high-speed and optoelectronic devices.)

### 3.3 Drift current and conductivity

The drift current density of each carrier is charge density × drift velocity:

$$J_n=e\,n\,\mu_n\,E,\qquad J_p=e\,p\,\mu_p\,E,$$

so the **total drift current** and **conductivity / resistivity** are

$$J=e\,(n\mu_n+p\mu_p)\,E=\sigma E,\qquad
\sigma=e\,(n\mu_n+p\mu_p),\qquad \rho=\frac{1}{\sigma}.$$

For **intrinsic Si at 300 K** the conductivity is minuscule ($J/E\sim 4\times10^{-26}$ A/(cm·V) for
the slide's geometry) — essentially **insulator behaviour**, again pointing to the need for doping.

### 3.4 A finer look at drift velocity

Between collisions a carrier accelerates; averaging the saw-tooth velocity over the mean time
$\tau$ between collisions gives the drift velocity. A simple "peak/2" average yields a factor
$\tfrac12$ that a more careful treatment removes, leaving the clean result $\mu=e\tau/m^*$.

### 3.5 What changes the mobility

Two scattering mechanisms dominate, with **opposite** temperature trends:

1. **Lattice (phonon) scattering** — more lattice vibration at higher $T$ scatters carriers more:
   $\mu_L\propto T^{-3/2}$.
2. **Ionized-impurity scattering** — for impurity concentration $N_I$, faster (hotter) carriers are
   deflected less: $\mu_I\propto T^{3/2}/N_I$.

They combine by **Matthiessen's rule**, $\dfrac{1}{\mu}=\dfrac{1}{\mu_L}+\dfrac{1}{\mu_I}$, so doping
(more impurities) and temperature both degrade mobility, dominating in different regimes.

### 3.6 Velocity saturation and hot carriers

At 300 K the mean thermal energy is $\sim\tfrac32 k_BT\approx 39$ meV, a thermal velocity
$\sim10^7$ cm/s. As long as the field is weak (drift energy $\ll$ thermal energy), $v_d=\mu E$ stays
linear. At **high fields** the drift velocity stops rising and **saturates** ($\sim10^7$ cm/s in
silicon): carriers dump energy into the lattice as fast as they gain it. These energetic carriers
are **"hot carriers"** — important in short-channel and power devices.

---

## 4. The Hall effect (and cyclotron resonance)

### 4.1 Principle

Pass a current $J_x$ through a sample in a perpendicular magnetic field $B_z$. The Lorentz force
deflects the moving carriers sideways until they pile up and create a transverse **Hall field**
$E_y$ that balances the deflection (no net current in $y$).

### 4.2 Hall coefficient

The measured **Hall coefficient** is

$$R_H=\frac{E_y}{J_xB_z}=\frac{1}{q\,n_{\text{carrier}}},$$

which for a single carrier type is

$$R_H=-\frac{1}{ne}\ (\text{electrons}),\qquad R_H=+\frac{1}{pe}\ (\text{holes}).$$

So the Hall effect delivers two things at once: the **sign of $R_H$ tells whether the material is
n- or p-type**, and its **magnitude gives the carrier concentration**. Combined with a conductivity
measurement ($\sigma=ne\mu$), it also yields the **mobility** — this is the standard way to
characterize a semiconductor.

### 4.3 Practical measurement and devices

- **Van der Pauw** geometry lets one extract sheet resistance and Hall voltage from contacts on an
  arbitrarily shaped thin sample.
- **Hall-effect devices** are widely integrated (position, current and field sensors) — exactly the
  kind of sensor microsystem this links to in practice.

### 4.4 Cyclotron resonance

In a magnetic field a carrier orbits at the **cyclotron frequency**

$$\omega_c=\frac{eB}{m^*}.$$

Sweeping a microwave field into resonance with $\omega_c$ produces an absorption peak, from which
the **effective mass $m^*$** is read directly — the experimental counterpart to the $m^*$ defined in
§1.4.

---

## 5. Take-home messages

- An electron in a crystal is a **wave packet**; its velocity is the **group velocity**
  $v_g=\frac1\hbar\,dE/dk$, which vanishes at the Brillouin-zone edge (**Bragg reflection**).
- The **effective mass** $m^*$ links acceleration to applied force; it is a diagonalizable
  **2nd-rank tensor**, and near band edges the bands are **parabolic**.
- Conduction comes from **electrons** (charge $-e$) in the conduction band and **holes** (charge
  $+e$) in the valence band. A **full band carries no current**; temperature must be non-zero.
- The **Fermi level** $E_F$ is the electrons' chemical potential. **Fermi–Dirac statistics** + the
  **density of states** give the carrier concentrations $n,p$. For an **intrinsic** semiconductor
  $E_F$ is near **midgap** and $n=p=n_i$, with $np=n_i^2$.
- **Mobility** $\mu$ links current density to field; it differs for electrons and holes (~3:1) and is
  degraded by **temperature** (phonons) and **impurities** (doping). At high field the velocity
  **saturates** → **hot carriers**.
- The **Hall effect** ties magnetic field to carrier sign, concentration and mobility (and powers
  many sensors); **cyclotron resonance** measures the effective mass.

### Guiding examples — recap
- **Solar cell:** photogenerated electrons *and* holes both drift/diffuse to the contacts; carrier
  density ($n_i$, then doping) and mobility set the achievable voltage and collection efficiency.
- **LED:** injected electrons and holes recombine; mobility and carrier statistics govern injection
  efficiency and radiative recombination.

### What comes next
**Doping** (extrinsic semiconductors): how donors and acceptors shift $E_F$ away from midgap and set
$n$ or $p$ far above $n_i$, turning resistive intrinsic silicon into useful device material — and the
**diffusion** current that, with drift, completes the transport picture.

---

## Reference values at 300 K

Typical parameters for the guiding semiconductors (canonical textbook values, [Ref] Appendix B).
Use these for order-of-magnitude checks and exercises.

| Quantity (300 K) | Si | Ge | GaAs |
|---|---|---|---|
| Bandgap $E_g$ (eV) | 1.12 | 0.66 | 1.42 |
| Gap type | indirect | indirect | direct |
| $N_c$ (cm⁻³) | $2.8\times10^{19}$ | $1.0\times10^{19}$ | $4.7\times10^{17}$ |
| $N_v$ (cm⁻³) | $1.04\times10^{19}$ | $6.0\times10^{18}$ | $7.0\times10^{18}$ |
| $n_i$ (cm⁻³) | $1.5\times10^{10}$ | $2.4\times10^{13}$ | $1.8\times10^{6}$ |
| Electron mobility $\mu_n$ (cm²/V·s) | 1350 | 3900 | 8500 |
| Hole mobility $\mu_p$ (cm²/V·s) | 480 | 1900 | 400 |
| Relative permittivity $\varepsilon_r$ | 11.7 | 16.0 | 13.1 |

**Reading the table.** A smaller gap means a far larger $n_i$ (note Ge vs. GaAs spans seven orders
of magnitude) — directly via $n_i\propto e^{-E_g/2k_BT}$. GaAs combines a wide gap (low leakage)
with very high electron mobility, which is why it excels in high-speed and light-emitting devices;
silicon's mobility is modest but its $\sim1.1$ eV gap and mature processing make it the workhorse.
The electron:hole mobility ratio is roughly 3:1 in Si and over 20:1 in GaAs.

> **Note on $n_i$ (Si).** The value $1.5\times10^{10}\ \text{cm}^{-3}$ is the one used in [Ref]
> and throughout this course. More recent measurements give $\approx 1.0\times10^{10}\
> \text{cm}^{-3}$; both appear in the literature, so state your convention in calculations.

---

## Quick-reference equation sheet

| Concept | Relation |
|---|---|
| Group velocity | $v_g=\dfrac{1}{\hbar}\dfrac{dE}{dk}$ |
| Crystal-momentum force | $\hbar\,\dfrac{dk}{dt}=F$ |
| Effective mass | $\dfrac{1}{m^*}=\dfrac{1}{\hbar^2}\dfrac{d^2E}{dk^2}$ |
| Parabolic band | $E\approx E_0+\dfrac{\hbar^2}{2}\sum_i \dfrac{(k_i-k_{0,i})^2}{m^*_i}$ |
| Full band current | $J=0$ |
| Hole charge | $+e$, same $v_g$ as missing electron |
| Fermi–Dirac | $f(E)=\dfrac{1}{1+e^{(E-E_F)/k_BT}}$ |
| DOS (band edge) | $g_c(E)\propto\sqrt{E-E_c}$ |
| Electron density | $n=N_c\,e^{-(E_c-E_F)/k_BT}$ |
| Hole density | $p=N_v\,e^{-(E_F-E_v)/k_BT}$ |
| Effective DOS | $N_{c,v}=2\big(2\pi m^* k_BT/h^2\big)^{3/2}$ |
| Mass-action law | $np=n_i^2=N_cN_v\,e^{-E_g/k_BT}$ |
| Intrinsic density | $n_i=\sqrt{N_cN_v}\,e^{-E_g/2k_BT}$ |
| Mobility | $\mu=\dfrac{e\tau}{m^*}$ |
| Drift current | $J=e(n\mu_n+p\mu_p)E=\sigma E$ |
| Resistivity | $\rho=1/\sigma$ |
| Lattice / impurity scattering | $\mu_L\propto T^{-3/2}$, $\ \mu_I\propto T^{3/2}/N_I$ |
| Hall coefficient | $R_H=\mp\dfrac{1}{ne},\ \dfrac{1}{pe}$ |
| Cyclotron frequency | $\omega_c=\dfrac{eB}{m^*}$ |

---

## Glossary

- **Wave packet** — localized superposition of Bloch states representing one electron; moves at the
  group velocity.
- **Group velocity** — $v_g=\frac1\hbar\,dE/dk$; the physical carrier velocity.
- **Bragg reflection** — standing-wave condition at the Brillouin-zone edge where $v_g=0$.
- **Effective mass $m^*$** — inverse curvature of $E(k)$; how a carrier responds to force. A tensor
  with transverse/longitudinal (or isotropic) principal values.
- **Hole** — fictitious $+e$ carrier representing a missing electron near the valence-band maximum.
- **Light / heavy holes** — valence-band carriers of different effective mass arising from spin–orbit
  coupling.
- **Fermi level $E_F$** — chemical potential of electrons; sets occupancy via Fermi–Dirac statistics.
- **Density of states $g(E)$** — number of allowed states per unit energy near a band edge.
- **Effective density of states $N_c,N_v$** — band states collapsed to a single effective level at
  the edge.
- **Intrinsic carrier concentration $n_i$** — equilibrium $n=p$ of an undoped semiconductor.
- **Mass-action law** — $np=n_i^2$ at equilibrium, independent of doping.
- **Mobility $\mu$** — drift velocity per unit field, $\mu=e\tau/m^*$.
- **Velocity saturation / hot carriers** — high-field regime where $v_d$ stops growing and carriers
  exceed thermal energies.
- **Hall coefficient $R_H$** — transverse-field response giving carrier sign and density.
- **Cyclotron frequency $\omega_c$** — orbital frequency $eB/m^*$ used to measure effective mass.

---

## References

- **[Ref]** D. A. Neamen, *Semiconductor Physics and Devices: Basic Principles*, 4th ed.,
  McGraw-Hill, 2012. ISBN 978-0-07-352958-5.
- **[1]** K. W. Böer & U. W. Pohl, *Semiconductor Physics*, Springer International Publishing, 2018.
  https://doi.org/10.1007/978-3-319-69150-3
- **[2]** J. D. Patterson & B. C. Bailey, *Solid-State Physics: Introduction to the Theory*,
  2nd ed., Springer-Verlag Berlin Heidelberg, 2010. https://doi.org/10.1007/978-3-642-02589-1
- **[3]** A. Karsenty, “A Comprehensive Review of Integrated Hall Effects in Macro-, Micro-,
  Nanoscales, and Quantum Devices”, *Sensors* 20(15):4163 (2020).
  https://doi.org/10.3390/s20154163
- **[6]** M. Grundmann, *The Physics of Semiconductors: An Introduction Including Nanophysics
  and Applications*, 2nd ed., Graduate Texts in Physics, Springer, 2010.
  https://doi.org/10.1007/978-3-642-13884-3
- **[7]** L.-Q. Chen, “Chemical Potentials of Gases, Electrons, Crystals, and Defects”, in
  *Thermodynamic Equilibrium and Stability of Materials*, Springer, Singapore, 2022.
  https://doi.org/10.1007/978-981-13-8691-6_10
