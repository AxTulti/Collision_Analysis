# Collision Analysis
 
Physics lab project (2024): analysis of elastic and inelastic collisions using experimental data collected in the laboratory. Built with Juan Diego Rodríguez Espinoza.
 
The analysis compares momentum and kinetic energy before and after each collision to evaluate conservation laws under different conditions.
 
## Experiments
 
| Data file | Collision |
|---|---|
| `elastico.txt` | Elastic |
| `ElasticoPeso.txt` | Elastic, with added mass |
| `ElasticoMolde.txt` | Elastic, with mold |
| `elastico-imperfecto-bumper.txt` | Elastic, imperfect bumper |
| `inelastico.txt` | Inelastic |
| `InelasticoPeso.txt` | Inelastic, with added mass |
 
## Structure
 
- `dataCleaner.py`: cleans and preprocesses the raw sensor data, with plot labeling and data inversion options.
- `Sanitized/`: cleaned data and MATLAB analysis.
- `*.txt`: raw lab measurements.
## Tools
 
Python, MATLAB
