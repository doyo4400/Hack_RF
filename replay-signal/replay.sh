
# record 
frequency_sample=sample_frequency_in_hz #2000000
frequency_to_record=frequency_to_record_in_hz
file_name=name_of_file_to_record

hackrf_transfer -s $frequency_sample -f $frequency_to_record -r open



# replay

frequency_sample=sample_frequency_in_hz #2000000
frequency_to_replay=frequency_to_replay_in_hz
file_name=name_of_file_to_replay
gain=gain_in_db #24
hackrf_transfer -s $frequency_sample -f $frequency_to_replay -t $file_name -a 1 -x $gain 