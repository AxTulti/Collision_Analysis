function []=two_comets(x_axis, var_1, var_2)
    line_1 = animatedline('Color','r','LineWidth',1 );
    line_2 = animatedline('Color','b','LineWidth',1 );

    for i = 1:length(x_axis)
        addpoints(line_1, x_axis(i), var_1(i))
        addpoints(line_2, x_axis(i), var_2(i))
        drawnow;
    end
    clear line_1 line_2;
end