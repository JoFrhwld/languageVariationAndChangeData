#' TD Deletion data from the Buckeye Corpus
#'
#' @details
#' This data was automatically generated from the Buckeye corpus by comparing the canonical
#' transcription for each word to its phonetic transcription in the corpus. It includes
#' estimates for rate of speech (syllables per second), as well as two different sets of
#' morphological coding.
#'
#' The coding scheme for \bold{\code{Gram}} is as follows
#' \describe{
#'  \item{\code{and}}{The word "and"}
#'  \item{\code{justT}}{Past tense and participial forms that just have a final [d] -> [t] change.
#'               specifically, "built", "sent", and "spent".}
#'  \item{\code{mono}}{Any word that doesn't have verbal morphology, and isn't a contraction.}
#'  \item{\code{nochange}}{No-change past tense forms. Specifically, "cost",
#'                         "burst", "cast" and its contractions}
#'  \item{\code{nt}}{Not contraction, e.g. "don't".}
#'  \item{\code{past}}{Regular past tense}
#'  \item{\code{semiweakD}}{Verbs that have a stem change and add /d/. Specifically
#'                          "heard","sold", "told", "unheard".}
#'  \item{\code{semiweakT}}{Verbs that have a stem change and add /t/. e.g. "felt", "kept"}
#'  \item{\code{stemchange}}{Verbs that have a stem change, and no apparent affix. Specifically
#'                           "bound", "found", and "held"}
#'  \item{\code{went}}{The word "went"}
#' }
#'
#' The coding scheme for \code{Gram2} is identical, except that it collapses the \code{semiweakD}
#' and \code{semiweakT} categories from \code{Gram}.
#'
#' @format a data frame with 26 columns
#' \describe{
#'  \item{Speaker}{Speaker ID from the Buckeye corpus metadata}
#'  \item{Recording}{The recording id}
#'  \item{Word}{The word in which the token appeared}
#'  \item{WordBegin}{Time stamp for the word onset in the recording}
#'  \item{WordEnd}{Time stamp for the word offset in the recording}
#'  \item{POS}{The part of speech tag from the Buckeye data}
#'  \item{seg}{Whether the token in question was a /t/ or a /d/}
#'  \item{SegTrans}{How the final phone of the word was phonetically transcribed}
#'  \item{PreSegTrans}{The preceding segment in the cannonical transcription}
#'  \item{FolSegTrans}{The following segment in the cannonical transcription}
#'  \item{DictNSyl}{The number of syllables in maximum 8 word window surrounding the target word, based on the dictionary entries}
#'  \item{NSyl}{The number of syllables in a maximum 8 word window surrounding the target word, based on the phonetic transcription}
#'  \item{PreWindow}{Number of preceding words included in the window}
#'  \item{PostWindow}{Number of following words in the window}
#'  \item{WindowBegin}{Time stamp of the contextual window onset}
#'  \item{WindowEnd}{Time stamp of the contextual window offset}
#'  \item{DictRate}{Number of syllables per second, based on the number of syllables in the dictionary entries}
#'  \item{Rate}{Number of syllables per second, based on the phonetic transcription}
#'  \item{FolWord}{The word following the token}
#'  \item{Context}{The broder context in which the token was found}
#'  \item{Gram}{A finer grained coding of grammatical class}
#'  \item{Gram2}{A coarser grained coding of grammatical class}
#'  \item{PreSeg}{A coding of the preceding segment}
#'  \item{FolSeg}{A coding of the following segment}
#'  \item{DepVar}{A finer grained coding of the realization of the /t/ or /d/}
#'  \item{td}{A coarse grained coding of the /t/ or /d/ into a 1 or 0}
#'
#' }
#'
#' @source Pitt, M. A., Dilley, L., Johnson, K., Kiesling, S., Raymond, W., Hume, E., & Fosler-Lussier, E. (2007). Buckeye Corpus of Conversational Speech (2nd release). Columbus, OH. Retrieved from www.buckeyecorpus.osu.edu
#'
#'
"buckeye"


#' ING Data from Sociolinguistic Interviews
#'
#' @details
#' This (ING) data was coded from sociolinguistic interviews carried out in Philadelphia.
#'
#' @format a data frame with 26 columns
#' \describe{
#'  \item{Token}{the word the observation was embedded in}
#'  \item{DepVar}{whether the token was realized with an apical or velar variant}
#'  \item{Style}{the speaking style}
#'  \item{GramStatus}{grammatical status of the token}
#'  \item{Following.Seg}{coding of the following segment}
#'  \item{Sex}{sex of speaker}
#'  \item{Age}{decade of age of the speaker}
#'  \item{Ethnicity}{Ethnicity of the speaker}
#' }
#'
"ing"

#' Joe's Vowels
#'
#' @details
#' This vowel data was extracted from a sociolinguistic interview Joe did in 2006
#'
#' @format a data frame with 10 columns
#' \describe{
#'  \item{year}{year of the interview}
#'  \item{plt_vclass}{indicates the vowel class}
#'  \item{word}{the word the vowel was in}
#'  \item{dur}{duration of the vowel in seconds}
#'  \item{F1_20, _35, _80}{F1 at 20\%, 35\% and 80\% of the vowel's duration}
#'  \item{F2_20, _35, _80}{F2a at 20\%, 35\% and 80\% of the vowel's duration}
#' }
#'
"joe_vowels"
