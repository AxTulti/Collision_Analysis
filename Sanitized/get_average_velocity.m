function average_velocity = get_average_velocity(initial_time, final_time, time, velocity)
    average_velocity = 0;
    times_counted = 0;


    for i = 1:length(time)
            
        if time(i) >= initial_time && time(i) <= final_time 
            average_velocity = average_velocity + velocity(i);
            times_counted = times_counted + 1;
        end
        
    end

    average_velocity = average_velocity / times_counted;

end