# include RSpec
# require 'pry'

# def flash_sort(array)
# end

def flash_sort(arr) 
    max = 0;
    min = arr[0];
    n = arr.length;
    m = (0.45 * n).floor;
    l = Array.new(m);
    i = 1;
    while (i < n)
        if (arr[i] < min) 
            min = arr[i];
        end
        if (arr[i] > arr[max]) 
            max = i;
        end
        i += 1;
    end
 
    if (min == arr[max]) 
        return arr;
    end
    
    c1 = (m - 1) / (arr[max] - min);
 
    k = 0;
    while (k < m)
        l[k] = 0;
        k+=1;
    end
    j = 0;
    while (j < n) 
        k = (c1 * (arr[j] - min)).floor;
        l[k]+=1;
        j+=1;
    end
    
    d = 1;
    while (d < m) 
        l[d] += l[d - 1];
        d+=1;
    end
 
    hold = arr[max];
    arr[max] = arr[0];
    arr[0] = hold;
 
    #permutation
    move = 0;
    j = 0; 
    k = m - 1;
  
    while (move < (n - 1)) 
        while (j > (l[k] - 1))
            j+=1;
            k = (c1 * (arr[j] - min)).floor;
        end
        if (k < 0) then end;
        flash = arr[j];
        while (j != l[k]) 
            k = (c1 * (flash - min)).floor;
            hold = arr[t = l[k]-=1];
            arr[t] = flash;
            flash = hold;
            move+=1;
        end
    end
 
    #insertion
    j = 1;
    while (j < n)
        hold = arr[j];
        i = j - 1;
        while (i >= 0 && arr[i] > hold)
            arr[i + 1] = arr[i-=1];
        end
        arr[i + 1] = hold;
        j+=1;
    end
    return arr;
end
