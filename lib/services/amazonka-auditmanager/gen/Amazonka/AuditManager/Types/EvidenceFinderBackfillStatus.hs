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
-- Module      : Amazonka.AuditManager.Types.EvidenceFinderBackfillStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AuditManager.Types.EvidenceFinderBackfillStatus
  ( EvidenceFinderBackfillStatus
      ( ..,
        EvidenceFinderBackfillStatus_COMPLETED,
        EvidenceFinderBackfillStatus_IN_PROGRESS,
        EvidenceFinderBackfillStatus_NOT_STARTED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype EvidenceFinderBackfillStatus = EvidenceFinderBackfillStatus'
  { fromEvidenceFinderBackfillStatus ::
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

pattern EvidenceFinderBackfillStatus_COMPLETED :: EvidenceFinderBackfillStatus
pattern EvidenceFinderBackfillStatus_COMPLETED = EvidenceFinderBackfillStatus' "COMPLETED"

pattern EvidenceFinderBackfillStatus_IN_PROGRESS :: EvidenceFinderBackfillStatus
pattern EvidenceFinderBackfillStatus_IN_PROGRESS = EvidenceFinderBackfillStatus' "IN_PROGRESS"

pattern EvidenceFinderBackfillStatus_NOT_STARTED :: EvidenceFinderBackfillStatus
pattern EvidenceFinderBackfillStatus_NOT_STARTED = EvidenceFinderBackfillStatus' "NOT_STARTED"

{-# COMPLETE
  EvidenceFinderBackfillStatus_COMPLETED,
  EvidenceFinderBackfillStatus_IN_PROGRESS,
  EvidenceFinderBackfillStatus_NOT_STARTED,
  EvidenceFinderBackfillStatus'
  #-}
