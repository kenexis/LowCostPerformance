rem # Build Test Captures
rem #
rem # This script builds the traffic sets for the different test cases.  Each of
rem # the test case capture files is then limited to 60 seconds.
rem #
rem # NOTE: For longer tests, you should use the shift_capture_times script to 
rem # generate additional capture files for each set, then merge them with these
rem # traffic captures.  This method is better than just running the test
rem # capture files in a tcpreplay loop since there will be some packet alignment
rem # and count errors introduced into the background traffic this way.

del test2_0000*.pcap test3_0000*.pcap test4_0000*.pcap test5_0000*.pcap test2.pcap test3.pcap test4.pcap test5.pcap

"c:\Program Files\wireshark\mergecap.exe" -w test2_ragged.pcap -F libpcap ARP_Request2.pcap DHCP2.pcap ENIP_ListIdentity2.pcap Gratuitous_ARP2.pcap ICMP2.pcap NTP2.pcap
"c:\Program Files\wireshark\mergecap.exe" -w test3_ragged.pcap -F libpcap ARP_Request2.pcap DHCP2.pcap ENIP_ListIdentity2.pcap Gratuitous_ARP2.pcap ICMP2.pcap NTP2.pcap ENIP_Class1-2.pcap ENIP_Class1-3.pcap
"c:\Program Files\wireshark\mergecap.exe" -w test4_ragged.pcap -F libpcap ARP_Request2.pcap DHCP2.pcap ENIP_ListIdentity2.pcap Gratuitous_ARP2.pcap ICMP2.pcap NTP2.pcap ARP_Burst2.pcap
"c:\Program Files\wireshark\mergecap.exe" -w test5_ragged.pcap -F libpcap ARP_Request2.pcap DHCP2.pcap ENIP_ListIdentity2.pcap Gratuitous_ARP2.pcap ICMP2.pcap NTP2.pcap ENIP_Class1-2.pcap ENIP_Class1-3.pcap ARP_Burst2.pcap

"c:\Program Files\wireshark\editcap.exe" -i 60.0 test2_ragged.pcap test2.pcap
"c:\Program Files\wireshark\editcap.exe" -i 60.0 test3_ragged.pcap test3.pcap
"c:\Program Files\wireshark\editcap.exe" -i 60.0 test4_ragged.pcap test4.pcap
"c:\Program Files\wireshark\editcap.exe" -i 60.0 test5_ragged.pcap test5.pcap

rename test2_00000* test2.pcap
rename test3_00000* test3.pcap
rename test4_00000* test4.pcap
rename test5_00000* test5.pcap

del test2_00001*
del test3_00001*
del test4_00001*
del test5_00001*
