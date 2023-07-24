echo ""
echo ""
echo "          ███████╗███████╗ ██████╗██╗   ██╗██████╗ ███████╗██████╗ ██╗████████╗███████╗          "
echo "          ██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝██╔════╝          "
echo "          ███████╗█████╗  ██║     ██║   ██║██████╔╝█████╗  ██████╔╝██║   ██║   █████╗            "
echo "          ╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══╝  ██╔══██╗██║   ██║   ██╔══╝            "
echo "          ███████║███████╗╚██████╗╚██████╔╝██║  ██║███████╗██████╔╝██║   ██║   ███████╗          "
echo "          ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚══════╝          "
echo ""
echo ""
sleep .2                                                                             
read -p "Enter Your Domain: " domain
echo ""
sleep .2
echo "Collecting all the urls...."
echo ""
sleep .2
python3 paramspider.py -d "$domain" -o /root/Desktop/dalfox/$domain_params.txt 
echo ""
sleep .2
echo "Removing Repeated Parameters..."
uro -i $domain_params.txt -o $domain_rp.txt
echo ""
sleep .2
echo ""
echo "XSS Finder..."
go run dalfox.go file $domain_rp.txt "--report"
















