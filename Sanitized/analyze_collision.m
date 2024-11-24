function analyze_collision(time, mass_1, mass_2, velocity_1, velocity_2, initial_time_initial_velocity, final_time_initial_velocity, initial_time_final_velocity, final_time_final_velocity)
    initial_velocity_1 = get_average_velocity(initial_time_initial_velocity, final_time_initial_velocity, time, velocity_1);
    initial_velocity_2 = get_average_velocity(initial_time_initial_velocity, final_time_initial_velocity, time, velocity_2);
    
    fprintf('Initial Velocity 1: %.4f m/s\n', initial_velocity_1);
    fprintf('Initial Velocity 2: %.4f m/s\n', initial_velocity_2);

    final_velocity_1 = get_average_velocity(initial_time_final_velocity, final_time_final_velocity, time, velocity_1);
    final_velocity_2 = get_average_velocity(initial_time_final_velocity, final_time_final_velocity, time, velocity_2);

    fprintf('Final Velocity 1: %.4f m/s\n', final_velocity_1);
    fprintf('Final Velocity 2: %.4f m/s\n\n', final_velocity_2);

    initial_momentum_1 = initial_velocity_1 * mass_1;
    initial_momentum_2 = initial_velocity_2 * mass_2;

    final_momentum_1 = final_velocity_1 * mass_1;
    final_momentum_2 = final_velocity_2 * mass_2;

    impulse_1 = final_momentum_1 - initial_momentum_1;
    impulse_2 = final_momentum_2 - initial_momentum_2;
    collision_time = final_time_initial_velocity;

    mean_force_1 = impulse_1 / collision_time;
    mean_force_2 = impulse_2 / collision_time;

    fprintf('Collision Impulse 1: %0.4f Ns\n', impulse_1);
    fprintf('Collision Impulse 2: %0.4f Ns\n', impulse_2);
    fprintf('Collision Mean Force 1: %0.4f N\n', mean_force_1);
    fprintf('Collision Mean Force 2: %0.4f N\n\n', mean_force_2);
    
    
    initial_kinetic_energy = (0.5 * mass_1 * (initial_velocity_1).^2) + (0.5 * mass_2 * (initial_velocity_2).^2);
    final_kinetic_energy = (0.5 * mass_1 * (final_velocity_1).^2) + (0.5 * mass_2 * (final_velocity_2).^2);
    energy_lost = (final_kinetic_energy - initial_kinetic_energy)/initial_kinetic_energy * 100;

    fprintf('Initial Kinetic Energy: %0.4f J\n', initial_kinetic_energy);
    fprintf('Final Kinetic Energy: %0.4f J\n', final_kinetic_energy);
    fprintf('Energy Loss: %0.4f %% \n\n', energy_lost);

end