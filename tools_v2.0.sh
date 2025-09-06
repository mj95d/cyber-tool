#!/bin/bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold Colors
BRed='\033[1;31m'         # Bold Red
BGreen='\033[1;32m'       # Bold Green
BYellow='\033[1;33m'      # Bold Yellow
BBlue='\033[1;34m'        # Bold Blue
BPurple='\033[1;35m'      # Bold Purple
BCyan='\033[1;36m'        # Bold Cyan
BWhite='\033[1;37m'       # Bold White

# Display the Banner
echo -e "${BYellow}                                                                           ${Color_Off}"
echo -e "${BRed} █████╗ ██████╗ ██████╗     █████╗ ████████╗████████╗ █████╗  ██████╗██╗  ██╗${Color_Off}"
echo -e "${BRed}██╔══██╗██╔══██╗██╔══██╗   ██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝${Color_Off}"
echo -e "${BGreen}███████║██████╔╝██████╔╝   ███████║   ██║      ██║   ███████║██║     █████╔╝ ${Color_Off}"
echo -e "${BGreen}██╔══██║██╔═══╝ ██╔═══╝    ██╔══██║   ██║      ██║   ██╔══██║██║     ██╔═██╗ ${Color_Off}"
echo -e "${BBlue}██║  ██║██║     ██║        ██║  ██║   ██║      ██║   ██║  ██║╚██████╗██║  ██╗${Color_Off}"
echo -e "${BBlue}╚═╝  ╚═╝╚═╝     ╚═╝        ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝${Color_Off}"
echo -e "${BYellow}                                                                           ${Color_Off}"
echo -e "${BPurple}              A Professional Pen-Testing/Secure Code Review Toolkit        ${Color_Off}"
#echo -e "${BCyan}Usage:${Color_Off} ./app-attack.sh [options]"

# Define color codes for formatted output in the terminal
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m'

# Define the log file path where the script logs messages
LOG_FILE="$HOME/security_tools.log"

# Function to display the main menu
display_main_menu() {
    echo -e "\n${BYellow}╔════════════════════════════════╗${NC}"
    echo -e "${BYellow}║           Main Menu            ║${NC}"
    echo -e "${BYellow}╚════════════════════════════════╝${NC}"
    echo -e "${BCyan}1)${NC} ${White}Penetration Testing Tools${NC}"
    echo -e "${BCyan}2)${NC} ${White}Secure Code Review Tools${NC}"
    echo -e "${BCyan}3)${NC} ${White}Step by Step Guide${NC}"
    echo -e "${BCyan}4)${NC} ${White}Exit${NC}"
    echo -e "${BYellow}╚════════════════════════════════╝${NC}"
}

# Function to display asterisks in order to make the display uncluttered.
display_asterisk(){
    echo -e "${BYellow}$(printf '%.s═' {1..60})${NC}"
}

# Function to display Penetration Testing Tools menu
display_penetration_testing_tools_menu() {
    echo -e "\n${BYellow}╔════════════════════════════════════════════╗${NC}"
    echo -e "${BYellow}║        Penetration Testing Tools           ║${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
    echo -e "${BCyan}1)${NC} ${White}nmap: Network exploration and security auditing tool${NC}"
    echo -e "${BCyan}2)${NC} ${White}nikto: Web server scanner${NC}"
    echo -e "${BCyan}3)${NC} ${White}LEGION: Automated web application security scanner${NC}"
    echo -e "${BCyan}4)${NC} ${White}OWASP ZAP: Web application security testing tool${NC}"
    echo -e "${BCyan}5)${NC} ${White}John the Ripper: Password cracking tool${NC}"
    echo -e "${BCyan}6)${NC} ${White}SQLmap: SQL Injection and database takeover tool${NC}"
    echo -e "${BCyan}7)${NC} ${White}Metasploit Framework: Penetration testing framework${NC}"
    echo -e "${BCyan}8)${NC} ${White}Go Back${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
}

# Function to display Secure Code Review Tools menu
display_secure_code_review_tools_menu() {
    echo -e "\n${BYellow}╔════════════════════════════════════════════╗${NC}"
    echo -e "${BYellow}║        Secure Code Review Tools            ║${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
    echo -e "${BCyan}1)${NC} ${White}osv-scanner: Scan a directory for vulnerabilities${NC}"
    echo -e "${BCyan}2)${NC} ${White}snyk cli: Test code locally or monitor for vulnerabilities${NC}"
    echo -e "${BCyan}3)${NC} ${White}brakeman: Scan a Ruby on Rails application for security vulnerabilities${NC}"
    echo -e "${BCyan}4)${NC} ${White}bandit: Security linter for Python code${NC}"
    echo -e "${BCyan}5)${NC} ${White}SonarQube: Continuous inspection of code quality and security${NC}"
    echo -e "${BCyan}6)${NC} ${White}Go Back${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
}

# Function to display Step by Step Guide menu
display_step_by_step_guide_menu() {
    echo -e "\n${BYellow}╔════════════════════════════════════════════╗${NC}"
    echo -e "${BYellow}║           Step by Step Guide               ║${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
    echo -e "${BCyan}1)${NC} ${White}Learn about Pen Testing tools${NC}"
    echo -e "${BCyan}2)${NC} ${White}Learn about Secure code review tools${NC}"
    echo -e "${BCyan}3)${NC} ${White}Go Back${NC}"
    echo -e "${BYellow}╚════════════════════════════════════════════╝${NC}"
}

# Function to display the step-by-step guide of the penetration testing tools.
display_step_by_step_guide_pen_testing() {
    echo -e "${BCyan}1)${NC} ${White}nmap: Network exploration and security auditing tool${NC}"
    echo -e "${BCyan}2)${NC} ${White}nikto: Web server scanner${NC}"
    echo -e "${BCyan}3)${NC} ${White}LEGION: Automated web application security scanner${NC}"
    echo -e "${BCyan}4)${NC} ${White}OWASP ZAP: Web application security testing tool${NC}"
    echo -e "${BCyan}5)${NC} ${White}John the Ripper: Password cracking tool${NC}"
    echo -e "${BCyan}6)${NC} ${White}SQLmap: SQL Injection and database takeover tool${NC}"
    echo -e "${BCyan}7)${NC} ${White}Metasploit Framework: Penetration testing framework${NC}"
    echo -e "${BCyan}8)${NC} ${White}Go Back${NC}"
}

# Function to display the step-by-step guide of the Secure Code Review tools.
display_step_by_step_guide_secure_code_review() {
    echo -e "${BCyan}1)${NC} ${White}osv-scanner: Scan a directory for vulnerabilities${NC}"
    echo -e "${BCyan}2)${NC} ${White}snyk cli: Test code locally or monitor for vulnerabilities${NC}"
    echo -e "${BCyan}3)${NC} ${White}brakeman: Scan a Ruby on Rails application for security vulnerabilities${NC}"
    echo -e "${BCyan}4)${NC} ${White}bandit: Security linter for Python code${NC}"
    echo -e "${BCyan}5)${NC} ${White}SonarQube: Continuous inspection of code quality and security${NC}"
    echo -e "${BCyan}6)${NC} ${White}Go Back${NC}"
}


handle_step_by_step_SCR_OSV_Scanner() {
    local choice
    while true; do
        echo -e " -${NC} ${White} OSV Scanner is a tool for detecting security vulnerabilities in open source projects. To learn more, click on the following link below."
        echo -e " -${NC} ${White} Download: https://github.com/google/osv-scanner"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_SCR_Snyk() {
    local choice
    while true; do
        echo -e " -${NC} ${White} Snyk is a CLI tool to find and fix vulnerabilities in your code, dependencies, containers, and infrastructure as code."
        echo -e " -${NC} ${White} To Download and learn more: https://snyk.io/download/"
        echo -e " -${NC} ${White} Run code test locally: snyk code test <directory>"
        echo -e " -${NC} ${White} Monitor for vulnerabilities: snyk monitor <directory> --all-projects"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_SCR_brakeman() {
    local choice
    while true; do
        echo -e " -${NC} ${White} Brakeman is a static analysis tool specifically designed to find security issues in Ruby on Rails applications."
        echo -e " -${NC} ${White} Download: https://github.com/presidentbeef/brakeman"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_SCR_bandit() {
    local choice
    while true; do
        echo -e " -${NC} ${White} A tool designed to find common security issues in Python code."
        echo -e " -${NC} ${White} Download: https://bandit.readthedocs.io/en/latest/"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_SCR_sonar() {
    local choice
    while true; do
        echo -e " -${NC} ${White} An open-source platform for continuous inspection of code quality and security to detect bugs, vulnerabilities, and code smells."
        echo -e " -${NC} ${White} Download: https://www.sonarqube.org/downloads/"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_nmap() {
    local choice
    while true; do
        echo -e " -${NC} ${White} A versatile and powerful tool for network discovery and security auditing, widely used for network inventory, managing service upgrade schedules, and monitoring host or service uptime."
        echo -e " -${NC} ${White} Download: https://nmap.org/download.html"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_nitko() {
    local choice
    while true; do
        echo -e " -${NC} ${White} An open source web server scanner that performs comprehensive tests against web servers for multiple items, including over 6700 potentially dangerous files/programs and outdated versions."
        echo -e " -${NC} ${White} Download: https://cirt.net/nikto/"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_legion() {
    local choice
    while true; do
        echo -e " -${NC} ${White} A toolkit for web application testing that automates the scanning process to identify common vulnerabilities and exposures in web applications."
        echo -e " -${NC} ${White} Download: https://github.com/GoVanguard/legion"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_owasp_zap() {
    local choice
    while true; do
        echo -e " -${NC} ${White} An open-source web application security scanner and testing tool maintained by the OWASP community, used for finding vulnerabilities in web applications."
        echo -e " -${NC} ${White} Download: https://github.com/zaproxy/zaproxy/releases"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_John_the_ripper() {
    local choice
    while true; do
        echo -e " -${NC} ${White} A powerful and flexible password cracking tool that supports various encryption algorithms and is used to crack password hashes through brute-force attacks."
        echo -e " -${NC} ${White} Download: https://www.openwall.com/john/"
        echo -e "${BCyan}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}


handle_step_by_step_pentest_SQLmap() {
    local choice
    while true; do
        echo -e " -${NC} ${White} An open-source penetration testing tool that automates the process of detecting and exploiting SQL injection vulnerabilities and taking over database servers."
        echo -e " -${NC} ${White} Download: https://sqlmap.org/"
        echo -e "${YELLOW}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

handle_step_by_step_pentest_metasploit() {
    local choice
    while true; do
        echo -e " -${NC} ${White} A comprehensive open-source framework for developing, testing, and executing exploits against target systems, widely used for penetration testing and vulnerability assessment."
        echo -e " -${NC} ${White} Download: https://metasploit.help.rapid7.com/docs/installing-the-metasploit-framework"
        echo -e "${YELLOW}1)${NC} ${White}Go Back${NC}"
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}


# Function for Penetration Testing Tools
handle_penetration_testing_tools() {
    local choice
    while true; do
        display_penetration_testing_tools_menu
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) run_nmap ;;
            2) run_nikto ;;
            3) run_legion ;;
            4) run_owasp_zap ;;
            5) run_john ;;
            6) run_sqlmap ;;
            7) run_metasploit ;;
            8) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

# Function for Secure Code Review Tools
handle_secure_code_review_tools() {
    local choice
    while true; do
        display_secure_code_review_tools_menu
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        case $choice in
            1) run_osv_scanner ;;
            2) run_snyk ;;
            3) run_brakeman ;;
            4) run_bandit ;;
            5) run_sonarqube ;;
            6) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
        esac
    done
}

# Function for handling the step by step guide
handle_step_by_step_guide(){
    local choice
    while true; do     
        display_step_by_step_guide_menu
        
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        
        case $choice in
            
            1) handle_step_by_step_guide_Pentest;;
            2) handle_step_by_step_guide_SCR;;
            3) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
    
        esac
    done
}

handle_step_by_step_guide_SCR(){
    local choice
    
    while true; do
        
        display_step_by_step_guide_secure_code_review
        
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        
        case $choice in
            
            1) handle_step_by_step_SCR_OSV_Scanner;;
            2) handle_step_by_step_SCR_Snyk ;;
            3) handle_step_by_step_SCR_brakeman;;
            4) handle_step_by_step_SCR_bandit;;
            5) handle_step_by_step_SCR_sonar ;;
            6) break;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
            
        esac
    done  
}

handle_step_by_step_guide_Pentest(){
    
    local choice
    
    while true; do
        
        display_step_by_step_guide_pen_testing
        
        read -p "$(echo -e ${BCyan}Choose an option:${NC} ) " choice
        
        case $choice in
            
            1) handle_step_by_step_pentest_nmap;;
            2) handle_step_by_step_pentest_nitko;;
            3) handle_step_by_step_pentest_legion;;
            4) handle_step_by_step_pentest_owasp_zap;;
            5) handle_step_by_step_pentest_John_the_ripper;;
            6) handle_step_by_step_pentest_SQLmap;;
            7) handle_step_by_step_pentest_metasploit;;
            8) break ;;
            *) echo -e "${RED}Invalid choice, please try again.${NC}" ;;
            
        esac
        
    done
}

# Function to run nmap
run_nmap(){
    output_file="${output}_nmap"
    read -p "$(echo -e ${BCyan}"Enter URL or IP address to scan:${NC} ")" url
    if [[ "$output_to_file" == "y" ]]; then
        nmap -oN "$output_file" "$url"
    else
        nmap "$url"
    fi
    echo -e "${BGreen}Nmap operation completed.${NC}"
}

run_bandit() {
    output_file="${output}_bandit"
    read -p "${BCyan}Enter the directory to scan:${NC} " directory
    if [[ "$output_to_file" == "y" ]]; then
        read -p "${BCyan}Enter the output format (txt, html, xml):${NC} " format
        bandit -r "$directory" -o "$output_file" -f "$format"
    else
        bandit -r "$directory"
    fi
    echo -e "${BGreen}Bandit operation completed.${NC}"
}



run_sonarqube() {
    echo -e "${BCyan}Starting SonarQube...${NC}"
    
    # Check if SonarQube Docker container is already running or exists
    if sudo docker ps -a --format '{{.Names}}' | grep -w "sonarqube" > /dev/null; then
        echo -e "${YELLOW}A container named 'sonarqube' already exists. Removing the existing container...${NC}"
        sudo docker rm -f sonarqube
    fi

    echo -e "${BCyan}Running SonarQube container...${NC}"
    sudo docker run -d --name sonarqube -p 9001:9000 sonarqube
    
    echo -e "${BGreen}SonarQube is running at http://localhost:9001${NC}"
    echo -e "${BCyan}Default credentials:${NC}"
    echo -e "${BCyan}login: admin${NC}"
    echo -e "${BCyan}password: admin${NC}"
}

run_nikto() {
    output_file="${output}_nikto"
    read -p "$(echo -e ${BCyan}"Enter URL and port to scan (Example: http://localhost:4200):${NC} ")" url
    if [[ "$output_to_file" == "y" ]]; then
        read -p "$(echo -e ${BCyan}"Enter the output format (txt, html, xml):${NC} ")" format
        nikto -h "$url" -o "$output_file" -Format "$format"
    else
        nikto -h "$url"
    fi
    echo -e "${BGreen}Nikto operation completed.${NC}"
}

# Function to run LEGION
run_legion(){
    echo -e "$(echo -e ${BCyan} "Running LEGION...${NC}")"
    sudo legion
    echo -e "${BGreen}LEGION Operation completed.${NC}"
}

# Function to run OWASP ZAP
run_owasp_zap(){
    read -p "$(echo -e ${BCyan} "Enter URL and port to scan (Example: http://localhost:4200):${NC} ")" url
    zap -quickurl "$url"
    echo -e "${BGreen}OWASP ZAP Operation completed.${NC}"
}

# Function to run John the Ripper
run_john() {
    output_file="${output}_john"
    read -p "$(echo -e ${BCyan} "Enter the path to the password file to crack:${NC} ")" password_file
    if [[ "$output_to_file" == "y" ]]; then
        john --session="$output_file" "$password_file" > "$output_file" 2>&1
        echo -e "${BGreen}Results saved to $output_file.${NC}"
    else
        john "$password_file"
    fi
    echo -e "${BGreen}John the Ripper operation completed.${NC}"
}

# Function to run sqlmap
run_sqlmap() {
    output_file="${output}_sqlmap"
    read -p "$(echo -e ${BCyan} "Enter URL to scan (e.g., http://example.com/vuln.php?id=1):${NC} ")" url
    if [[ "$output_to_file" == "y" ]]; then
        sqlmap -u "$url" --output-dir="$output_file" > "$output_file/sqlmap_output.txt" 2>&1
        echo -e "${BGreen}Results saved to $output_file/sqlmap_output.txt.${NC}"
    else
        sqlmap -u "$url"
    fi
    echo -e "${BGreen}SQLmap operation completed.${NC}"
}

# Function to run Metasploit
run_metasploit() {
    output_file="${output}_metasploit"
    if [[ "$output_to_file" == "y" ]]; then
        sudo msfconsole | tee "$output_file.txt"
        echo -e "${BGreen}Results saved to $output_file.txt.${NC}"
    else
        sudo msfconsole
    fi
    echo -e "${BGreen}Metasploit operation completed.${NC}"
}

# Function to run osv-scanner
run_osv_scanner(){
    output_file="${output}_osv_scanner"
    read -p "$(echo -e ${BCyan} "Enter directory to scan:${NC} ")" directory
    source ~/.bashrc
    if [[ "$output_to_file" == "y" ]]; then
        osv-scanner --format table --output "$output_file" -r "$directory"
        echo -e "${BGreen}Results saved to $output_file.${NC}"
    else
        osv-scanner --recursive "$directory"
    fi
    echo -e "${BGreen}OSV-Scanner Operation completed.${NC}"
}

# Function to run snyk cli
run_snyk(){
    output_file="${output}_snyk"
    read -p "$(echo -e ${BCyan} "Select Snyk option:
    1) Run code test locally
    2) Monitor for vulnerabilities and see results in Snyk UI
    Enter your choice (1/2):${NC} ")" snyk_option
    case $snyk_option in
        1)   read -p "$(echo -e ${BCyan} "Enter directory to scan (current directory ./):${NC} ")" directory
             if [[ "$output_to_file" == "y" ]]; then
                snyk code test "$directory" > "$output_file"
                echo -e "${BGreen}Results saved to $output_file.${NC}"
             else
                snyk code test "$directory"
             fi
        ;;
        2)   read -p "$(echo -e ${BCyan} "Enter directory to scan (current directory ./):${NC} ")" directory
             if [[ "$output_to_file" == "y" ]]; then
                snyk monitor "$directory" --all-projects > "$output_file"
                echo -e "${BGreen}Results saved to $output_file.${NC}"
             else
                snyk monitor "$directory" --all-projects
             fi
             echo -e "${BGreen}SNYK Operation completed.${NC}"
        ;;
        *)
            echo -e "${BRed}Invalid choice!${NC}"
        ;;
    esac
}

# Function to run Brakeman
run_brakeman(){
    output_file="${output}_brakeman"
    read -p "$(echo -e ${BCyan} "Enter directory to scan (current directory ./):${NC} ")" directory
    if [[ "$output_to_file" == "y" ]]; then
        sudo brakeman "$directory" --force -o "$output_file"
        echo -e "${BGreen}Results saved to $output_file.${NC}"
    else
        sudo brakeman "$directory" --force
    fi
    echo -e "${BGreen}Brakeman Operation completed.${NC}"
}

# Function to log messages with a timestamp to the log file
log_message() {
    local message="$1"
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $message" >> "$LOG_FILE"
}

# Function to check for updates for the installed security tools
check_updates() {
    log_message "Checking for updates..."
    
    # Update APT package lists if they haven't been updated in the last day
    if [ $(sudo find /var/lib/apt/lists -type f -mtime +1 | wc -l) -gt 0 ]; then
        sudo apt update -qq
    fi
    
    # Update individual tools
    update_brakeman
    update_snyk
    update_owasp_zap
    update_nikto
    update_nmap
    update_john
    update_sqlmap
    update_metasploit
}

# Function to update Brakeman (a security scanner for Ruby on Rails applications)
update_brakeman() {
    sudo gem update brakeman > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        log_message "Gems already up-to-date: brakeman"
    else
        log_message "Failed to update brakeman"
    fi
}

# Function to update OWASP ZAP (a web application security scanner)
update_owasp_zap() {
    if ! command -v zaproxy &> /dev/null; then
        sudo apt install -y zaproxy > /dev/null 2>&1
        log_message "OWASP ZAP installed"
    else
        current_version=$(dpkg -s zaproxy | grep '^Version:' | awk '{print $2}')
        latest_version=$(apt-cache policy zaproxy | grep 'Candidate:' | awk '{print $2}')
        if [ "$current_version" != "$latest_version" ]; then
            sudo apt install -y zaproxy > /dev/null 2>&1
            log_message "OWASP ZAP updated to version $latest_version"
        else
            log_message "OWASP ZAP is up-to-date (version $current_version)"
        fi
    fi
}

# Function to update Nikto (a web server scanner)
update_nikto() {
    if ! command -v nikto &> /dev/null; then
        sudo apt install -y nikto > /dev/null 2>&1
        log_message "Nikto installed"
    else
        cd /tmp
        if [ -d "nikto" ]; then
            sudo rm -rf nikto
        fi
        git clone https://github.com/sullo/nikto.git > /dev/null 2>&1
        cd nikto/program
        sudo cp nikto.pl /usr/local/bin/nikto > /dev/null 2>&1
        sudo chmod +x /usr/local/bin/nikto
        log_message "Nikto updated"
    fi
}

# Function to update Nmap (a network exploration and security auditing tool)
update_nmap() {
    if ! command -v nmap &> /dev/null; then
        sudo apt install -y nmap > /dev/null 2>&1
        log_message "Nmap installed"
    else
        # Check the installed version against the latest available version
        current_version=$(nmap --version | head -n 1 | awk '{print $3}')
        latest_version=$(apt-cache policy nmap | grep 'Candidate:' | awk '{print $2}')
        if [ "$current_version" != "$latest_version" ]; then
            sudo apt install -y nmap > /dev/null 2>&1
            log_message "Nmap updated to version $latest_version"
        else
            log_message "Nmap is up-to-date (version $current_version)"
        fi
    fi
}

# Function to update John the Ripper (a password cracking tool)
update_john() {
    if ! command -v john &> /dev/null; then
        echo -e "${MAGENTA}Installing John the Ripper...${NC}"
        sudo apt install -y john > /dev/null 2>&1
        log_message "John the Ripper installed"
    else
        # Get the current installed version using the package manager
        current_version=$(dpkg-query -W -f='${Version}' john 2>/dev/null)
        # Get the latest available version
        latest_version=$(apt-cache policy john | grep 'Candidate:' | awk '{print $2}')
        
        if [ "$current_version" != "$latest_version" ]; then
            echo -e "${MAGENTA}Updating John the Ripper...${NC}"
            sudo apt install -y john > /dev/null 2>&1
            log_message "John the Ripper updated to version $latest_version"
        else
            log_message "John the Ripper is up-to-date (version $current_version)"
        fi
    fi
}

# Function to update bandit
update_bandit() {
    pip install --upgrade bandit > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        log_message "Bandit updated successfully"
    else
        log_message "Failed to update Bandit"
    fi
}

# Function to update sqlmap
update_sqlmap() {
    if ! command -v sqlmap &> /dev/null; then
        echo -e "${MAGENTA}sqlmap is not installed. Installing sqlmap...${NC}"
        sudo apt update && sudo apt install -y sqlmap
        log_message "sqlmap installed"
    else
        # Check if sqlmap needs an update
        output=$(sqlmap 2>&1)
        if echo "$output" | grep -q "you haven't updated sqlmap"; then
            echo -e "${MAGENTA}sqlmap update available. Updating...${NC}"
            sudo sqlmap --update
            log_message "sqlmap updated"
            elif echo "$output" | grep -q "your sqlmap version is outdated"; then
            echo -e "${MAGENTA}sqlmap version is outdated. Updating...${NC}"
            sudo sqlmap --update
            log_message "sqlmap updated"
        else
            log_message "sqlmap is up-to-date"
        fi
    fi
}

# Function to update Metasploit Framework
update_metasploit() {
    if ! command -v msfconsole &> /dev/null; then
        sudo apt update
        sudo apt install -y metasploit-framework > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            log_message "Metasploit Framework installed"
        else
            log_message "Failed to install Metasploit Framework"
            exit 1
        fi
    else
        # Check the installed version against the latest available version
        current_version=$(msfconsole --version | head -n 1 | awk '{print $3}')
        latest_version=$(apt-cache policy metasploit-framework | grep 'Candidate:' | awk '{print $2}')
        if [ "$current_version" != "$latest_version" ]; then
            sudo apt update
            sudo apt install -y metasploit-framework > /dev/null 2>&1
            log_message "Metasploit Framework updated to version $latest_version"
        else
            log_message "Metasploit Framework is up-to-date (version $current_version)"
        fi
    fi
}

# Function to install Go (programming language) if not already installed
install_go() {
    echo -e "${MAGENTA}Installing Go...${NC}"
    sudo apt update && sudo apt install -y golang-go
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Go installed successfully!${NC}"
    else
        echo -e "${RED}Failed to install Go.${NC}"
        exit 1
    fi
}

install_sonarqube() {
    # Check if SonarQube Docker container is already installed
    if ! sudo docker images | grep -q sonarqube; then
        echo -e "${CYAN}Pulling SonarQube Docker image...${NC}"
        sudo docker pull sonarqube
        
        echo -e "${CYAN}Downloading and installing SonarScanner...${NC}"
        wget -O sonarscanner-cli.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.1.0.4477-linux-x64.zip?_gl=1*1vsu6fm*_gcl_au*MTA1MTc2MzQ4NS4xNzI1NTQ4Njcw*_ga*MTIzMjQ3ODQ1OC4xNzI1NTQ4Njcw*_ga_9JZ0GZ5TC6*MTcyNTU0ODY3MC4xLjEuMTcyNTU0OTY2MS42MC4wLjA.
        sudo unzip sonarscanner-cli.zip -d /opt/sonarscanner

        #Add path to ./bashrc
        echo 'export PATH=$PATH:/opt/sonarscanner/sonar-scanner-6.1.0.4477-linux-x64/bin' >> ~/.bashrc
        source ~/.bashrc
        
        echo -e "${GREEN}SonarQube and SonarScanner installed successfully!${NC}"
    else
        echo -e "${GREEN}SonarQube is already installed.${NC}"
    fi
}

install_bandit() {
    if ! command -v bandit &> /dev/null; then
        echo -e "${CYAN}Installing Bandit...${NC}"
        sudo pip install bandit
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Bandit installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install Bandit.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}Bandit is already installed.${NC}"
    fi
}

# Function to install npm (Node.js package manager) if not already installed
install_npm() {
    echo -e "${CYAN}Installing npm...${NC}"
    sudo apt update && sudo apt install -y npm
    if [ $? -eq 0 ]; then
        sudo chown -R $(whoami) ~/.npm
        echo -e "${GREEN}npm installed successfully!${NC}"
    else
        echo -e "${RED}Failed to install npm.${NC}"
        exit 1
    fi
}

# Function to install Snyk CLI (a vulnerability scanner) if not already installed
install_snyk_cli() {
    if ! command -v npm &> /dev/null; then
        install_npm
    fi
    if ! command -v snyk &> /dev/null; then
        echo -e "${CYAN}Installing snyk cli...${NC}"
        sudo npm install -g snyk
        echo -e "${GREEN}Snyk cli installed successfully!${NC}"
        echo -e "${YELLOW}Authenticating snyk...${NC}"
        echo -e "${RED}Please authenticate by clicking 'Authenticate' in the browser to continue.${NC}"
        snyk auth
    else
        echo -e "${GREEN}snyk cli is already installed.${NC}"
    fi
}

# Function to install Brakeman if not already installed
install_brakeman() {
    if ! command -v brakeman &> /dev/null; then
        echo -e "${MAGENTA}Installing brakeman...${NC}"
        sudo gem install brakeman
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Brakeman installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install brakeman.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}brakeman is already installed.${NC}"
    fi
}

# Function to install osv-scanner (a vulnerability scanner) if not already installed
install_osv_scanner() {
    if ! command -v osv-scanner &> /dev/null; then
        echo -e "${CYAN}Installing osv-scanner...${NC}"
        go install github.com/google/osv-scanner/cmd/osv-scanner@v1
        echo -e "${GREEN}osv-scanner installed successfully!${NC}"
        # Add osv-scanner to the user's PATH
        echo 'export PATH=$PATH:'"$(go env GOPATH)"/bin >> ~/.bashrc
        source ~/.bashrc
    else
        echo -e "${GREEN}osv-scanner is already installed.${NC}"
    fi
}


# Function to install Nmap if not already installed
install_nmap() {
    if ! command -v nmap &> /dev/null; then
        echo -e "${MAGENTA}Installing nmap...${NC}"
        sudo apt update && sudo apt install -y nmap
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}nmap installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install nmap.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}nmap is already installed.${NC}"
    fi
}

# Function to install nikto
install_nikto() {
    # Check if nikto is not installed
    if ! command -v nikto &> /dev/null; then
        # Display message indicating nikto installation
        echo -e "${CYAN}Installing nikto...${NC}"
        # Update package list and install nikto
        sudo apt update && sudo apt install -y nikto
        # Check if the installation was successful
        if [ $? -eq 0 ]; then
            # Display success message
            echo -e "${GREEN}nikto installed successfully!${NC}"
        else
            #   Display failure message and exit script
            echo -e "${RED}Failed to install nikto.${NC}"
            exit 1
        fi
    else
        # Display message if nikto is already installed
        echo -e "${GREEN}nikto is already installed.${NC}"
    fi
}
# Function to install LEGION
install_legion() {
    # Check if legion is not installed
    if ! command -v legion &> /dev/null; then
        # Display message indicating LEGION installation
        echo -e "${MAGENTA}Installing LEGION...${NC}"
        # Update package list
        sudo apt update
        # Install legion
        sudo apt install -y legion
        # Check if the installation was successful
        if [ $? -eq 0 ]; then
            # Display success message
            echo -e "${GREEN}LEGION installed successfully!${NC}"
        else
            # Display failure message and exit script
            echo -e "${RED}Failed to install LEGION.${NC}"
            exit 1
        fi
    else
        # Display message if LEGION is already installed
        echo -e "${GREEN}LEGION is already installed.${NC}"
    fi
}

# Function to install OWASP ZAP
install_owasp_zap() {
    # Check if OWASP ZAP is not installed by checking its directory
    if [ ! -d "/opt/owasp-zap/" ]; then
        # Display message indicating OWASP ZAP installation
        echo -e "${CYAN}Installing OWASP ZAP...${NC}"
        # Download OWASP ZAP tar file to /tmp directory
        wget https://github.com/zaproxy/zaproxy/releases/download/v2.15.0/ZAP_2.15.0_Linux.tar.gz -P /tmp
        # Check if the download was successful
        if [ $? -eq 0 ]; then
            # Create directory for OWASP ZAP in /opt
            sudo mkdir -p /opt/owasp-zap
            # Change ownership of the OWASP ZAP directory to the current user
            sudo chown -R $(whoami):$(whoami) /opt/owasp-zap
            # Extract the downloaded tar file to the OWASP ZAP directory
            tar -xf /tmp/ZAP_2.15.0_Linux.tar.gz -C /opt/owasp-zap/
            # Create a symbolic link for the OWASP ZAP executable in /usr/local/bin
            sudo ln -s /opt/owasp-zap/ZAP_2.15.0/zap.sh /usr/local/bin/zap
            # Check if the symbolic link creation was successful
            if [ $? -eq 0 ]; then
                # Display success message
                echo -e "${GREEN}OWASP ZAP installed successfully!${NC}"
            else
                # Display failure message and exit script
                echo -e "${RED}Failed to move OWASP ZAP.${NC}"
                exit 1
            fi
        else
            # Display failure message if download failed and exit script
            echo -e "${RED}Failed to download OWASP ZAP.${NC}"
            exit 1
        fi
    else
        # Display message if OWASP ZAP is already installed
        echo -e "${GREEN}OWASP ZAP is already installed.${NC}"
    fi
}

# Function to install John the Ripper if not already installed
install_john() {
    if ! command -v john &> /dev/null; then
        echo -e "${MAGENTA}Installing John the Ripper...${NC}"
        sudo apt update && sudo apt install -y john
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}John the Ripper installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install John the Ripper.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}John the Ripper is already installed.${NC}"
    fi
}

# Function to install sqlmap if not already installed
install_sqlmap() {
    if ! command -v sqlmap &> /dev/null; then
        echo -e "${MAGENTA}Installing sqlmap...${NC}"
        sudo apt update && sudo apt install -y sqlmap
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}sqlmap installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install sqlmap.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}sqlmap is already installed.${NC}"
    fi
}

# Function to install Metasploit if not already installed
install_metasploit() {
    if ! command -v msfconsole &> /dev/null; then
        echo -e "${MAGENTA}Installing Metasploit...${NC}"
        sudo apt update && sudo apt install -y metasploit-framework
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Metasploit installed successfully!${NC}"
        else
            echo -e "${RED}Failed to install Metasploit.${NC}"
            exit 1
        fi
    else
        echo -e "${GREEN}Metasploit is already installed.${NC}"
    fi
}

# Function to check for updates
check_updates() {
    # Prompt user to check for updates
    read -p "Do you want to check for updates? (y/n): " check_updates
    # If the user agrees to check for updates
    if [[ "$check_updates" == "y" ]]; then
        # Log message indicating update check
        log_message "Checking for updates..."
        update_brakeman
        update_bandit
        update_owasp_zap
        update_nikto
        update_nmap
        update_john
        update_sqlmap
        update_metasploit
        # Display success message
        echo -e "${GREEN}Updates checked successfully.${NC}"
    else
        # Display message indicating skipping of updates check
        echo -e "${YELLOW}Skipping updates check.${NC}"
    fi
}

# Function to save vulnerabilities found by various tools to a file
save_vulnerabilities() {
    # Set the tool name to the first argument
    local tool=$1
    # Set the output file name based on the tool name
    local output_file="$tool-vulnerabilities.txt"
    # Determine the command to run based on the tool name
    case $tool in
        "osv-scanner")
            # Scan the directory using osv-scanner and save output to the file
            osv-scanner scan "./$directory" > "$output_file"
        ;;
        "snyk")
            # Run snyk code scan and save output to the file
            snyk code scan > "$output_file"
        ;;
        "brakeman")
            # Run brakeman scan and save output to the file
            sudo brakeman --force > "$output_file"
        ;;
        "nmap")
            # Run nmap scan and save output to the file
            nmap -v -A "$url" > "$output_file"
        ;;
        "nikto")
            # Run nikto scan and save output to the file
            nikto -h "$url" > "$output_file"
        ;;
        "legion")
            # Run legion scan and save output to the file
            legion "$url" > "$output_file"
        ;;
        "john")
            # Run John the Ripper and save output to the file
            john --show --format=raw-md5 "$input_file" > "$output_file"
        ;;
        "sqlmap")
            # Run SQLmap scan and save output to the file
            sqlmap -u "$url" --batch --output-dir="$output_dir" > "$output_file"
        ;;
        "metasploit")
            # Run Metasploit scan and save output to the file
            msfconsole -x "use auxiliary/scanner/portscan/tcp; set RHOSTS $url; run; exit" > "$output_file"
        ;;
        *)
            echo -e "${RED}Unsupported tool: $tool${NC}"
            return 1
        ;;
    esac
    # Display the found vulnerabilities
    echo -e "${GREEN}Vulnerabilities found:${NC}"
    cat "$output_file"
    # Prompt user to save the vulnerabilities to a file
    read -p "Do you want to save the vulnerabilities to a file? (y/n) " save_to_file
    if [[ "$save_to_file" == "y" ]]; then
        # Display message indicating the file has been saved
        echo -e "${GREEN}Vulnerabilities saved to $output_file${NC}"
    else
        # Display message indicating the file was not saved
        echo -e "${GREEN}Vulnerabilities not saved to a file.${NC}"
    fi
}

# Main function to check and install tools
main() {
    # Initialize log file by clearing its contents
    echo "" > "$LOG_FILE"
    
# Check if npm is installed; if not, install it
    if ! command -v npm &> /dev/null; then
        install_npm
    fi
    # Check if Go is installed; if not, install it
    if ! command -v go &> /dev/null; then
        install_go
    fi
    # Check and install osv-scanner
    install_osv_scanner
    # Check and install snyk cli
    install_snyk_cli
    # Check and install brakeman
    install_brakeman
    # Check and install bandit
    install_bandit
    # Check and install nmap
    install_nmap
    # Check and install nikto
    install_nikto
    # Check and install legion
    install_legion
    # Check and install OWASP ZAP
    install_owasp_zap
    # Check and install John
    install_john
    # Check and install sqlmap
    install_sqlmap
    # Check and install metasploit
    install_metasploit
    # install sonarqube
    # install_sonarqube
    
    # Check for updates for the installed tools
    check_updates
        
    # Ask if the user wants to output to a file
    read -p "$(echo -e ${BYellow}"Do you want to output results to a file? (y/n): "${NC})" output_to_file
    if [[ "$output_to_file" == "y" ]]; then
        read -p "$(echo -e ${BYellow}"Enter the output file path: "${NC})" output
    fi
    
    while true; do
        display_main_menu
        read -p "$(echo -e ${BYellow}"Choose an option: "${NC})" main_choice
        case $main_choice in
            1) handle_penetration_testing_tools ;;
            2) handle_secure_code_review_tools ;;
            3) handle_step_by_step_guide ;;
            4) echo -e "${BYellow}Exiting...${NC}"
                log_message "Script ended"
                exit 0 ;;
            *) echo -e "${BRed}Invalid choice, please try again.${NC}"
                log_message "Invalid user input" ;;
        esac
    done
}

# Execute main function to start the script
main
