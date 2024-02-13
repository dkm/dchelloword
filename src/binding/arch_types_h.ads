pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

package arch_types_h is

   --  unsupported macro: BYTE_ORDER LITTLE_ENDIAN
  -- KallistiOS ##version##
  --   arch/dreamcast/include/types.h
  --   (c)2000-2001 Megan Potter
  -- 

  --* \file    arch/types.h
  --    \brief   Common integer types.
  --    \ingroup system_types
  --    This file contains typedefs for some common/useful integer types. These
  --    types include ones that tell you exactly how long they are, as well as some
  --    BSD-isms.
  --    \author Megan Potter
  -- 

  --* \addtogroup system_types
  --    @{
  -- 

  -- Generic types  
  --*< \brief 64-bit unsigned integer  
   subtype uint64 is Extensions.unsigned_long_long;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:32

  --*< \brief 32-bit unsigned integer  
   subtype uint32 is unsigned_long;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:33

  --*< \brief 16-bit unsigned integer  
   subtype uint16 is unsigned_short;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:34

  --*< \brief 8-bit unsigned integer  
   subtype uint8 is unsigned_char;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:35

  --*< \brief 64-bit signed integer  
   subtype int64 is Long_Long_Integer;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:36

  --*< \brief 32-bit signed integer  
   subtype int32 is long;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:37

  --*< \brief 16-bit signed integer  
   subtype int16 is short;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:38

  --*< \brief 8-bit signed integer  
   subtype int8 is char;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:39

  -- Volatile types  
  --*< \brief 64-bit volatile unsigned type  
   subtype vuint64 is uint64;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:42

  --*< \brief 32-bit volatile unsigned type  
   subtype vuint32 is uint32;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:43

  --*< \brief 16-bit volatile unsigned type  
   subtype vuint16 is uint16;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:44

  --*< \brief 8-bit volatile unsigned type  
   subtype vuint8 is uint8;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:45

  --*< \brief 64-bit volatile signed type  
   subtype vint64 is int64;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:46

  --*< \brief 32-bit volatile signed type  
   subtype vint32 is int32;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:47

  --*< \brief 16-bit volatile signed type  
   subtype vint16 is int16;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:48

  --*< \brief 8-bit volatile signed type  
   subtype vint8 is int8;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:49

  -- Pointer arithmetic types  
  --*< \brief Pointer arithmetic type  
   subtype ptr_t is uint32;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:52

  -- another format for type names  
  -- \cond  
  -- \endcond  
  --*< \brief BSD-style unsigned char  
   subtype u_char is unsigned_char;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:66

  --*< \brief BSD-style unsigned short  
   subtype u_short is unsigned_short;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:67

  --*< \brief BSD-style unsigned integer  
   subtype u_int is unsigned;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:68

  --*< \brief BSD-style unsigned long  
   subtype u_long is unsigned_long;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:69

  --*< \brief BSD-style unsigned short  
   subtype ushort is unsigned_short;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:70

  --*< \brief BSD-style unsigned integer  
   subtype uint is unsigned;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:71

  -- \cond  
  -- \endcond  
  -- This type may be used for any generic handle type that is allowed
  --   to be negative (for errors) and has no specific bit count
  --   restraints.  

  --*< \brief Generic "handle" type  
   subtype handle_t is int;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:82

  -- Thread and priority types  
  --*< \brief Thread ID type  
   subtype tid_t is handle_t;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:85

  --*< \brief Priority value type  
   subtype prio_t is handle_t;  -- /mnt/barryallen/dkm/git/KallistiOS/kernel/arch/dreamcast/include/arch/types.h:86

  -- Make sure to pull in the base endianness defines...  
  --* \brief  Endianness definition -- Little Endian  
  --* @}  
end arch_types_h;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
