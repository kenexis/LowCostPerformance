rem # Shift Capture Times
rem #
rem # This script shifts the capture times to align properly with the desired
rem # packet loading values and timing offsets.  There are two EtherNet/IP
rem # Class 1 I/O capture files created since the initial file is only 43
rem # seconds in length.  The final versions of the capture files are all
rem # 60 seconds in length.
rem #
rem # The values used to shift the capture files were all determined in the
rem # Packet_Times.xlsx Excel spreadsheet.  The file times were all normalized
rem # to a round number to make it easy to determine the first packet offset
rem # times.
rem #
rem # The ARP burst packet capture file was offset by 20 seconds from the base
rem # capture offset to establish a steady-state condition while conducting
rem # performance tests before the burst occurs.

"c:\Program Files\wireshark\editcap.exe" -t -1103.065903067 -F libpcap ARP_Burst.enc ARP_Burst2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -1.985088169 -F libpcap ARP_Request.enc ARP_Request2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -329.266213355 -F libpcap DHCP.enc DHCP2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -836.759909836 -F libpcap ENIP_Class1.enc ENIP_Class1-2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -793.937898950 -F libpcap ENIP_Class1.enc ENIP_Class1-3.pcap
"c:\Program Files\wireshark\editcap.exe" -t -670.150598755 -F libpcap ENIP_ListIdentity.enc ENIP_ListIdentity2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -162.572689549 -F libpcap Gratuitous_ARP.enc Gratuitous_ARP2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -445.781404307 -F libpcap ICMP.enc ICMP2.pcap
"c:\Program Files\wireshark\editcap.exe" -t -562.664155668 -F libpcap NTP.enc NTP2.pcap
