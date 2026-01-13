---
layout: manual
title: Boundary Conditions
permalink: /software/moltres/wiki/bcs/
---

This page shows the mathematical forms of the auxiliary equation pieces that
each boundary condition class represents. Note that $$u$$ is used in some places to denote a
generic variable. Elsewhere typical literature symbols are used, e.g. $$\phi$$
denotes the neutron flux, $$T$$ denotes the temperature, and $$C$$ denotes
precursor concentrations.

## Moltres BCs

**VacuumBC**

$$\vec{n} \cdot -D_g \nabla \phi_g = \frac{\phi_g}{2}$$

## Squirrel BCs

**OutflowBC**

\begin{align}
\vec{n} \cdot \vec{\Gamma} &= \vec{n} \cdot \vec{a} u \ \ \mathsf{if} \ \ \vec{n} \cdot \vec{a} > 0\\\
&= 0 \ \ \mathsf{if} \ \ \vec{n} \cdot \vec{a} \le 0\\\
\end{align}

**InflowBC**

$$\vec{n} \cdot \vec{\Gamma} = \vec{n} \cdot \vec{a} u_{in}$$

**TemperatureOutflowBC**

\begin{align}
\vec{n} \cdot \vec{\Gamma} &= \rho c_p \vec{n} \cdot \vec{a} T \ \ \mathsf{if} \ \ \vec{n} \cdot \vec{a} > 0\\\
&= 0 \ \ \mathsf{if} \ \ \vec{n} \cdot \vec{a} \le 0
\end{align}

**TemperatureInflowBC**

$$\vec{n} \cdot \vec{\Gamma} = \rho c_p \vec{n} \cdot \vec{a} T_{in}$$
