# Search and Tracking in 3D Space Using a Species Based Particle Swarm Optimizer

This repository contains a MATLAB implementation of a **Species Based Particle Swarm Optimizer (SBPSO)** for dynamic target search and tracking in a three-dimensional environment.

The implementation is based on the methodology presented in the following publication:

> **A. M. Farid, S. Egerton, J. C. Barca, and M. A. S. Kamal**,
> *"Search and Tracking in 3D Space Using a Species Based Particle Swarm Optimizer,"*
> 2018 IEEE International Conference on Automatic Control and Intelligent Systems (I2CACIS), Shah Alam, Malaysia, 2018, pp. 155–160.
> DOI: **10.1109/I2CACIS.2018.8603709**

## Abstract

This project explores the application of a Species Based Particle Swarm Optimizer (SBPSO) for autonomous search and tracking of dynamic targets in a three-dimensional search space. By partitioning particles into species, the algorithm is capable of maintaining multiple candidate solutions and improving robustness when tracking moving targets, making it suitable for applications such as autonomous robotics and unmanned aerial vehicles (UAVs).

## Keywords

* Particle Swarm Optimization (PSO)
* Species Based PSO (SBPSO)
* Dynamic Target Tracking
* 3D Search Space
* Unmanned Aerial Vehicles (UAVs)
* Swarm Intelligence
* Computational Intelligence

## Repository Contents

* `main.m` — Main simulation script.
* `CostFunction.m` — Target tracking cost function.
* Additional MATLAB functions for particle initialization, swarm evolution, and visualization.

## Disclaimer

This repository provides an academic MATLAB implementation developed following the concepts and methodology described in the cited paper. It is intended for educational and research purposes and is **not an official implementation released by the original authors**.

## Citation

If you use this repository in your research, please cite the original paper:

```bibtex
@INPROCEEDINGS{8603709,
  author={Farid, A. M. and Egerton, S. and Barca, J. C. and Kamal, M. A. S.},
  booktitle={2018 IEEE International Conference on Automatic Control and Intelligent Systems (I2CACIS)},
  title={Search and Tracking in 3D Space Using a Species Based Particle Swarm Optimizer},
  year={2018},
  pages={155-160},
  doi={10.1109/I2CACIS.2018.8603709}
}
```

## License

This project is distributed for educational and research purposes.
