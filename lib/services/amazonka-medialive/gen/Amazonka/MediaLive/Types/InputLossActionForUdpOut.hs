{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaLive.Types.InputLossActionForUdpOut
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.InputLossActionForUdpOut
  ( InputLossActionForUdpOut
      ( ..,
        InputLossActionForUdpOut_DROP_PROGRAM,
        InputLossActionForUdpOut_DROP_TS,
        InputLossActionForUdpOut_EMIT_PROGRAM
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Input Loss Action For Udp Out
newtype InputLossActionForUdpOut = InputLossActionForUdpOut'
  { fromInputLossActionForUdpOut ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern InputLossActionForUdpOut_DROP_PROGRAM :: InputLossActionForUdpOut
pattern InputLossActionForUdpOut_DROP_PROGRAM = InputLossActionForUdpOut' "DROP_PROGRAM"

pattern InputLossActionForUdpOut_DROP_TS :: InputLossActionForUdpOut
pattern InputLossActionForUdpOut_DROP_TS = InputLossActionForUdpOut' "DROP_TS"

pattern InputLossActionForUdpOut_EMIT_PROGRAM :: InputLossActionForUdpOut
pattern InputLossActionForUdpOut_EMIT_PROGRAM = InputLossActionForUdpOut' "EMIT_PROGRAM"

{-# COMPLETE
  InputLossActionForUdpOut_DROP_PROGRAM,
  InputLossActionForUdpOut_DROP_TS,
  InputLossActionForUdpOut_EMIT_PROGRAM,
  InputLossActionForUdpOut'
  #-}
