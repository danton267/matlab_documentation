function thumbnail_generator(matlab_fig, category_name, fn_name, USE_MATLAB)
% https://plotly.com/matlab/user-guide/
    USE_MATLAB = true;
    %%% SET CONSTANTS %%%
    mkdir(strcat('../../thumbs/', category_name, "/"))
    PLOT = strcat('../../thumbs/', category_name, "/", fn_name, '.png');
%     USE_MATLAB = false;
% 
%     if nargin > 1
%         USE_MATLAB = true;
%     end

    %%% Make MATALB Figure tiny %%%
    
    matlab_fig.Position = [0 0 160 160];

    %%% END EXAMPLE CODE %%%
    f = fig2plotly(matlab_fig, 'open', false,'strip', true);
    f.layout.margin.t = 0;
    f.layout.margin.b = 0;
    f.layout.margin.l = 0;
    f.layout.margin.r = 0;

    if USE_MATLAB == false
        % Write Plotly image
        write_image(f,'png', PLOT, 160, 160, 2)
    else
        % Write MATLAB image (for 3d)
        disp(PLOT)
        saveas(gcf, PLOT)
%         exportgraphics(gcf, PLOT)
    end
    
end