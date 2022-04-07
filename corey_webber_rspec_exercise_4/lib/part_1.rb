def my_reject(arr, &prc)
    new_arr = []

    arr.each do |el|
        new_arr << el if !prc.call(el)
    end

    new_arr
end

def my_one?(arr, &prc)
    arr.count(&prc) == 1
end

def hash_select(hash, &prc)
    new_hash = {}
    
    hash.each do |k, v|
        new_hash[k] = v if prc.call(k, v)
    end
        
    new_hash 
end

def xor_select(arr, prc_1, prc_2)
    arr.select do |ele|
        (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele))
    end
end

def proc_count(val, procs)
   procs.count { |prc| prc.call(val)} 
end