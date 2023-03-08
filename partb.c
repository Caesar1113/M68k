void MemTest(){

    int pattern_type;

    while(1){
        printf("Choose your test pattern \r\ntype1: 55\r\ntype2: AA\r\ntype3: FF\r\ntype4: 00");
        printf("\r\n#");
        printf("\r\n type numbers to indicate test pattern, eg: 1");

        scanf("%d",&pattern_type);

        if(pattern_type==1){
            test_data=0x55;
            break;
        }else if(pattern_type==2){
            test_data=0xAA;
            break;
        }else if(pattern_type==3){
            test_data=0xFF;
            break;
        }else if(pattern_type==4){
            test_data=0x00;
            break;
        }
        


    }









}