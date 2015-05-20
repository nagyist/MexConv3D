classdef dg_cpu
  %DG_CPU Summary of this class goes here
  %   Detailed explanation goes here
  
  properties
    X;
    pool;
    stride;
    pad;
    
    desc;
    ran;
  end
  
  methods
    function ob = dg_cpu(szX, pool, stride, pad, desc)
      ob.ran = 10;
      
      ob.X = ob.ran * randn(szX, 'single');
      
      ob.pool = [];
      if (~isempty(pool))
        ob.pool = pool;
      end
      
      ob.stride = [];
      if (~isempty(stride))
        ob.stride = stride;
      end
      
      ob.pad = [];
      if (~isempty(pad))
        ob.pad = pad;
      end
      
      ob.desc = desc;
    end % dg_cpu
    
  end % methods
  
end
