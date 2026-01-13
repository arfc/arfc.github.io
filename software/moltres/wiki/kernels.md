---
layout: manual
title: Kernels
permalink: /software/moltres/wiki/kernels/
---

This page shows the mathematical forms of the governing equation pieces that
each kernel class represents. Note that $$u$$ is used in some places to denote a
generic variable. Elsewhere typical literature symbols are used, e.g. $$\phi$$
denotes the neutron flux, $$T$$ denotes the temperature, and $$C$$ denotes
precursor concentrations.

**CoupledFissionEigenKernel**

$$-\frac{\chi_g^p}{k} \sum_{g' = 1}^G (1 -
        \beta) \nu \Sigma_{g'}^f \phi_{g'}$$

**CoupledFissionKernel**

$$-\chi_g^p \sum_{g' = 1}^G (1 -
        \beta) \nu \Sigma_{g'}^f \phi_{g'}$$

**CoupledScalarAdvection**

$$\nabla \cdot \vec{a} u$$

**DelayedNeutronSource**

$$-\chi_g^d \sum_i^I \lambda_i C_i$$

**DivFreeCoupledScalarAdvection**

$$\vec{a} \cdot \nabla u$$

**FissionHeatSource**

$$-\frac{P}{\int_{\partial V} \sum_{g' = 1}^G \nu \Sigma_{g'}^f \phi_{g'} dV}
\sum_{g' = 1}^G \nu \Sigma_{g'}^f \phi_{g'}$$

where $$P$$ is a representation of the total power of the reactor.

**GammaHeatSource**

$$-\gamma Q_f$$

where $$\gamma$$ is a factor
representing heat dissipation by gamma and neutron irradiation in the moderator
and $$Q_f$$ is given by:

$$\sum_{g=1}^G \epsilon_{f,g}\Sigma_{f,g}\phi_g$$

with $$\epsilon_{f,g}$$ the amount of heat given off per fission event.

**GroupDiffusion**

$$- \nabla \cdot D_g
        \nabla \phi_g$$

**InScatter**

$$-\sum_{g \ne g'}^G
        \Sigma_{g'\rightarrow g}^s \phi_{g'}$$

**NtTimeDerivative**

$$\frac{1}{v_g}\frac{\partial \phi_g}{\partial t}$$

**PrecursorDecay**

$$\lambda_i C_i$$

**PrecursorSource**

$$-\sum_{g'= 1}^G \beta_i \nu
        \Sigma_{g'}^f \phi_{g'}$$

**ScalarAdvectionArtDiff**

$$\nabla \cdot -\delta \nabla u$$

where $$\delta$$ is an artificial diffusion coefficient determined by:

$$\delta = \frac{|\vec{a}| h_{max}}{2}$$

with $$\vec{a}$$ the advection velocity and $$h_{max}$$ the maximum element
length dimension.

**ScalarTransportTimeDerivative**

$$\frac{\partial u}{\partial t}$$

**SelfFissionEigenKernel**

$$\frac{-\nu_f \Sigma_f \phi}{k}$$

**SigmaR**

$$\Sigma_g^r \phi_g$$

**TransientFissionHeatSource**

$$-\sum_{g=1}^G \epsilon_{f,g}\Sigma_{f,g}\phi_g$$
